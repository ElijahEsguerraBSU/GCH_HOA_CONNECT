<?php

namespace App\Http\Controllers\NotificationSettings;

use App\Http\Controllers\Controller;
use App\Models\notification_settings;
use App\Models\User;
use App\Models\module;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\DB;

class NotificationSettingsController extends Controller
{
    public function index(Request $request)
    {
        // Get per_page from request, default to 10
        $perPage = $request->input('per_page', 10);
        
        // Build grouped query per user to mimic Permission Settings summary
        $query = notification_settings::query()
            ->select([
                'users_id',
                \DB::raw('COUNT(*) as notifications_count'),
                \DB::raw('MAX(created_at) as latest_created'),
                \DB::raw("SUM(CASE WHEN status = 'active' THEN 1 ELSE 0 END) as active_count"),
                \DB::raw('MIN(id) as representative_id'),
            ])
            ->with(['user']);
        
        // Apply search filter (user name/email)
        if ($request->has('search') && $request->search != '') {
            $search = $request->search;
            $query->where(function($q) use ($search) {
                $q->whereHas('user', function($userQuery) use ($search) {
                    $userQuery->where('name', 'like', "%{$search}%")
                             ->orWhere('email', 'like', "%{$search}%");
                });
            });
        }
        
        // Apply status filter (any active in group → active)
        if ($request->has('status') && $request->status != '' && $request->status != 'all') {
            $status = $request->status;
            if ($status === 'active') {
                $query->whereExists(function($sub) {
                    $sub->select(\DB::raw(1))
                        ->from('notification_settings as ns2')
                        ->whereColumn('ns2.users_id', 'notification_settings.users_id')
                        ->where('ns2.status', 'active');
                });
            } else {
                $query->whereNotExists(function($sub) {
                    $sub->select(\DB::raw(1))
                        ->from('notification_settings as ns2')
                        ->whereColumn('ns2.users_id', 'notification_settings.users_id')
                        ->where('ns2.status', 'active');
                });
            }
        }
        
        // Apply module filter (group must have at least one record with module_id)
        if ($request->has('module_filter') && $request->module_filter != '' && $request->module_filter != 'all') {
            $moduleId = $request->module_filter;
            $query->whereExists(function($sub) use ($moduleId) {
                $sub->select(\DB::raw(1))
                    ->from('notification_settings as ns2')
                    ->whereColumn('ns2.users_id', 'notification_settings.users_id')
                    ->where('ns2.module_id', $moduleId);
            });
        }
        
        // Group by user and paginate
        $notificationSettings = $query
            ->groupBy('users_id')
            ->orderBy(\DB::raw('latest_created'), 'desc')
            ->paginate($perPage)
            ->appends($request->except('page'));
        
        $users = User::where('active', 1)->orderBy('name')->get();
        $modules = module::where('status', 'active')->orderBy('module_name')->get();
        
        // Get distinct roles from users table
        $roles = User::select('role')
            ->distinct()
            ->whereNotNull('role')
            ->where('role', '!=', '')
            ->orderBy('role')
            ->pluck('role');
        
        return view('notification_settings.notification_settings', compact('notificationSettings', 'users', 'modules', 'roles'));
    }

    public function store(Request $request)
    {
        // Allow either a single user ID or the special value 'all'
        $validator = Validator::make($request->all(), [
            'users_id' => 'required',
            'status' => 'required|in:active,inactive',
            'modules' => 'required|array|min:1',
            'modules.*' => 'required|exists:module,id'
        ]);

        if ($validator->fails()) {
            return response()->json([
                'success' => false,
                'message' => 'Validation failed',
                'errors' => $validator->errors()
            ], 422);
        }

        // Additional validation for users_id depending on value
        if ($request->users_id !== 'all' && !User::where('id', $request->users_id)->exists()) {
            return response()->json([
                'success' => false,
                'message' => 'Validation failed',
                'errors' => ['users_id' => ['Selected user is invalid.']]
            ], 422);
        }

        try {
            DB::beginTransaction();
            
            $settings = [];

            // Determine target users
            $targetUserIds = [];
            if ($request->users_id === 'all') {
                // Apply to all active users, optionally filtered by role
                $userQuery = User::where('active', 1);
                
                // If role filter is provided, filter users by that role
                if ($request->has('role_filter') && $request->role_filter != '' && $request->role_filter != null) {
                    $userQuery->where('role', $request->role_filter);
                }
                
                $targetUserIds = $userQuery->pluck('id')->toArray();
            } else {
                $targetUserIds = [(int) $request->users_id];
            }

            // Create notification settings for each selected module and user
            foreach ($targetUserIds as $userId) {
                foreach ($request->modules as $moduleId) {
                    // Check if setting already exists for this user-module combination
                    $existing = notification_settings::where('users_id', $userId)
                        ->where('module_id', $moduleId)
                        ->first();
                    
                    if (!$existing) {
                        $setting = notification_settings::create([
                            'users_id' => $userId,
                            'status' => $request->status,
                            'module_id' => $moduleId
                        ]);
                        $settings[] = $setting;
                    }
                }
            }
            
            DB::commit();

            return response()->json([
                'success' => true,
                'message' => 'Notification settings created successfully',
                'settings' => $settings
            ]);
        } catch (\Exception $e) {
            DB::rollback();
            
            return response()->json([
                'success' => false,
                'message' => 'Error creating notification settings: ' . $e->getMessage()
            ], 500);
        }
    }

    public function show($id)
    {
        try {
            $setting = notification_settings::with(['user', 'module'])->findOrFail($id);
            
            // Get all notification settings for this user
            $allSettings = notification_settings::where('users_id', $setting->users_id)
                ->with(['module'])
                ->get();
            
            // Get all module IDs that the user has enabled
            $enabledModuleIds = $allSettings->pluck('module_id')->toArray();
            
            // Determine the status - if any setting is active, consider it active
            $hasActive = $allSettings->where('status', 'active')->count() > 0;
            $status = $hasActive ? 'active' : 'inactive';
            
            return response()->json([
                'success' => true,
                'setting' => $setting,
                'allSettings' => $allSettings,
                'enabledModuleIds' => $enabledModuleIds,
                'status' => $status
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Notification setting not found'
            ], 404);
        }
    }

    public function update(Request $request, $id)
    {
        $validator = Validator::make($request->all(), [
            'users_id' => 'required|exists:users,id',
            'status' => 'required|in:active,inactive',
            'modules' => 'required|array|min:1',
            'modules.*' => 'required|exists:module,id'
        ]);

        if ($validator->fails()) {
            return response()->json([
                'success' => false,
                'message' => 'Validation failed',
                'errors' => $validator->errors()
            ], 422);
        }

        try {
            DB::beginTransaction();
            
            $setting = notification_settings::findOrFail($id);
            $userId = $request->users_id;
            $selectedModuleIds = $request->modules;
            $status = $request->status;
            
            // Get all existing notification settings for this user
            $existingSettings = notification_settings::where('users_id', $userId)->get();
            $existingModuleIds = $existingSettings->pluck('module_id')->toArray();
            
            // Update existing settings for modules that are still selected
            foreach ($existingSettings as $existingSetting) {
                if (in_array($existingSetting->module_id, $selectedModuleIds)) {
                    // Update status for existing setting
                    $existingSetting->update([
                        'status' => $status
                    ]);
                } else {
                    // Delete settings for modules that are no longer selected
                    $existingSetting->delete();
                }
            }
            
            // Create new settings for modules that don't exist yet
            foreach ($selectedModuleIds as $moduleId) {
                if (!in_array($moduleId, $existingModuleIds)) {
                    notification_settings::create([
                        'users_id' => $userId,
                        'status' => $status,
                        'module_id' => $moduleId
                    ]);
                }
            }
            
            DB::commit();

            // Reload a setting to get updated data (use any setting for this user, or the original if it still exists)
            $updatedSetting = notification_settings::where('users_id', $userId)
                ->with(['user', 'module'])
                ->first();
            
            // If no settings exist (all were deleted), use the original setting structure
            if (!$updatedSetting) {
                $updatedSetting = notification_settings::withTrashed()->find($id);
            }
            
            return response()->json([
                'success' => true,
                'message' => 'Notification settings updated successfully',
                'setting' => $updatedSetting
            ]);
        } catch (\Exception $e) {
            DB::rollback();
            
            return response()->json([
                'success' => false,
                'message' => 'Error updating notification setting: ' . $e->getMessage()
            ], 500);
        }
    }

    public function destroy($id)
    {
        try {
            $setting = notification_settings::findOrFail($id);
            
            // Delete ALL notification settings for this user
            $userId = $setting->users_id;
            notification_settings::where('users_id', $userId)->delete();

            return response()->json([
                'success' => true,
                'message' => 'All notification settings for this user have been deleted successfully'
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Error deleting notification setting: ' . $e->getMessage()
            ], 500);
        }
    }

    public function getUserRole($userId)
    {
        try {
            $user = User::findOrFail($userId);
            
            return response()->json([
                'success' => true,
                'role' => $user->role
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'User not found'
            ], 404);
        }
    }
}
