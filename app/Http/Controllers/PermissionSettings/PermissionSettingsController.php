<?php

namespace App\Http\Controllers\PermissionSettings;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\permission_settings;
use App\Models\permission_settings_list;
use App\Models\User;
use App\Models\module;
use Illuminate\Support\Facades\DB;

class PermissionSettingsController extends Controller
{
    public function index(Request $request)
    {
        // Get per_page from request, default to 10
        $perPage = $request->input('per_page', 10);
        
        // Start with base query
        $query = permission_settings::with(['user', 'permissionSettingsList.module']);
        
        // Apply search filter - searches user name, email
        if ($request->has('search') && $request->search != '') {
            $search = $request->search;
            $query->where(function($q) use ($search) {
                $q->whereHas('user', function($userQuery) use ($search) {
                    $userQuery->where('name', 'like', "%{$search}%")
                             ->orWhere('email', 'like', "%{$search}%");
                });
            });
        }
        
        // Apply status filter
        if ($request->has('status') && $request->status != '' && $request->status != 'all') {
            $query->where('status', $request->status);
        }
        
        // Apply module filter
        if ($request->has('module_filter') && $request->module_filter != '' && $request->module_filter != 'all') {
            $query->whereHas('permissionSettingsList', function($permQuery) use ($request) {
                $permQuery->where('module_id', $request->module_filter);
            });
        }
        
        // Order and paginate
        $permissionSettings = $query->orderBy('created_at', 'desc')
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
        
        return view('permission_settings.permission_settings', compact('permissionSettings', 'users', 'modules', 'roles'));
    }

    public function store(Request $request)
    {
        try {
            // Custom validation - allow either a single user ID or the special value 'all'
            $validator = \Validator::make($request->all(), [
                'users_id' => 'required',
                'status' => 'required|in:active,inactive',
                'permissions' => 'required|array|min:1',
                'permissions.*' => 'required|exists:module,id'
            ]);

            if ($validator->fails()) {
                return response()->json([
                    'success' => false,
                    'message' => 'Validation failed',
                    'errors' => $validator->errors()
                ], 422);
            }

            // Additional validation for users_id depending on value
            if ($request->users_id === 'all') {
                // When "All Users" is selected, a role must be selected
                if (!$request->has('role_filter') || $request->role_filter == '' || $request->role_filter == null) {
                    return response()->json([
                        'success' => false,
                        'message' => 'Validation failed',
                        'errors' => ['role_filter' => ['Please select a role when choosing "All Users".']]
                    ], 422);
                }
            } else if (!User::where('id', $request->users_id)->exists()) {
                return response()->json([
                    'success' => false,
                    'message' => 'Validation failed',
                    'errors' => ['users_id' => ['Selected user is invalid.']]
                ], 422);
            }

            DB::beginTransaction();

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

            $createdSettings = [];

            // Create permission setting for each target user
            foreach ($targetUserIds as $userId) {
                // Check if permission setting already exists for this user
                $existingSetting = permission_settings::where('users_id', $userId)->first();
                
                if ($existingSetting) {
                    // Update existing setting
                    $existingSetting->update([
                        'status' => $request->status
                    ]);
                    
                    // Delete existing permission settings list entries
                    $existingSetting->permissionSettingsList()->delete();
                    
                    $permissionSetting = $existingSetting;
                } else {
                    // Create new permission setting
                    $permissionSetting = permission_settings::create([
                        'users_id' => $userId,
                        'status' => $request->status
                    ]);
                }

                // Create permission settings list entries
                foreach ($request->permissions as $moduleId) {
                    $module = module::find($moduleId);
                    if ($module) {
                        permission_settings_list::create([
                            'permission_settings_id' => $permissionSetting->id,
                            'permission_allowed' => $module->module_name,
                            'module_id' => $moduleId,
                            'status' => 'active'
                        ]);
                    }
                }
                
                $permissionSetting->load(['user', 'permissionSettingsList.module']);
                $createdSettings[] = $permissionSetting;
            }

            DB::commit();

            $message = count($createdSettings) > 1 
                ? 'Permission settings created successfully for ' . count($createdSettings) . ' users'
                : 'Permission setting created successfully';

            return response()->json([
                'success' => true,
                'message' => $message,
                'settings' => $createdSettings
            ]);

        } catch (\Exception $e) {
            DB::rollback();
            
            return response()->json([
                'success' => false,
                'message' => 'Failed to create permission setting: ' . $e->getMessage()
            ], 500);
        }
    }

    public function show($id)
    {
        try {
            $permissionSetting = permission_settings::with(['user', 'permissionSettingsList.module'])
                ->findOrFail($id);

            return response()->json([
                'success' => true,
                'setting' => $permissionSetting
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Permission setting not found'
            ], 404);
        }
    }

    public function update(Request $request, $id)
    {
        try {
            $request->validate([
                'users_id' => 'required|exists:users,id',
                'status' => 'required|in:active,inactive',
                'permissions' => 'required|array|min:1',
                'permissions.*' => 'required|exists:module,id'
            ]);

            DB::beginTransaction();

            $permissionSetting = permission_settings::findOrFail($id);

            // Update permission setting
            $permissionSetting->update([
                'users_id' => $request->users_id,
                'status' => $request->status
            ]);

            // Delete existing permission settings list entries
            $permissionSetting->permissionSettingsList()->delete();

            // Create new permission settings list entries
            foreach ($request->permissions as $moduleId) {
                $module = module::find($moduleId);
                if ($module) {
                    permission_settings_list::create([
                        'permission_settings_id' => $permissionSetting->id,
                        'permission_allowed' => $module->module_name,
                        'module_id' => $moduleId,
                        'status' => 'active'
                    ]);
                }
            }

            DB::commit();

            $permissionSetting->load(['user', 'permissionSettingsList.module']);

            return response()->json([
                'success' => true,
                'message' => 'Permission setting updated successfully',
                'setting' => $permissionSetting
            ]);

        } catch (\Exception $e) {
            DB::rollback();
            
            return response()->json([
                'success' => false,
                'message' => 'Failed to update permission setting: ' . $e->getMessage()
            ], 500);
        }
    }

    public function destroy($id)
    {
        try {
            $permissionSetting = permission_settings::findOrFail($id);
            
            // Delete related permission settings list entries
            $permissionSetting->permissionSettingsList()->delete();
            
            // Delete the permission setting
            $permissionSetting->delete();

            return response()->json([
                'success' => true,
                'message' => 'Permission setting deleted successfully'
            ]);

        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Failed to delete permission setting: ' . $e->getMessage()
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
