<?php

namespace App\Http\Controllers\business;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\business_management_list;
use App\Models\User;
use App\Models\module;
use App\Models\notification_settings;
use App\Models\Notification;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\DB;

class BusinessController extends Controller
{
    public function index(Request $request)
    {
        // Get per_page from request, default to 10
        $perPage = $request->input('per_page', 10);
        
        // Start query - Get current user's businesses only
        $query = business_management_list::with('user')
            ->where('user_id', Auth::id());
        
        // Search functionality
        if ($request->has('search') && $request->search !== '') {
            $search = $request->search;
            $query->where(function($q) use ($search) {
                $q->where('business_name', 'LIKE', "%{$search}%")
                  ->orWhere('type_of_business', 'LIKE', "%{$search}%")
                  ->orWhere('address', 'LIKE', "%{$search}%");
            });
        }
        
        // Status filter
        if ($request->has('status') && $request->status !== 'all') {
            $query->where('status', $request->status);
        }
        
        // Order by creation date
        $query->orderBy('created_at', 'desc');
        
        // Paginate results and append query parameters
        $businesses = $query->paginate($perPage)->appends($request->except('page'));

        // Check if Application For Certification template exists
        $hasCertificationTemplate = false;
        $templateDirectory = storage_path('business_templates');
        if (is_dir($templateDirectory)) {
            $files = glob($templateDirectory . '/*');
            foreach ($files as $file) {
                if (is_file($file) && strpos(basename($file), 'application_for_certification') === 0) {
                    $hasCertificationTemplate = true;
                    break;
                }
            }
        }

        return view('business.business', compact('businesses', 'hasCertificationTemplate'));
    }

    public function store(Request $request)
    {
        Log::info('=== BUSINESS STORE METHOD CALLED ===', [
            'user_id' => Auth::id(),
            'user_name' => Auth::user()->name ?? 'N/A',
            'request_data' => [
                'business_name' => $request->input('business_name'),
                'type_of_business' => $request->input('type_of_business'),
                'has_files' => $request->hasFile('business_clearance')
            ]
        ]);
        
        try {
            $validated = $request->validate([
                'business_name' => 'required|string|max:255',
                'type_of_business' => 'required|string|max:255',
                'address' => 'nullable|string|max:500',
                'business_clearance' => 'required|array|max:5',
                'business_clearance.*' => 'file|mimes:pdf,jpg,jpeg,png|max:15360',
            ]);

            // Handle multiple file uploads
            $filePaths = [];
            if ($request->hasFile('business_clearance')) {
                $files = $request->file('business_clearance');
                foreach ($files as $file) {
                    $fileName = time() . '_' . uniqid() . '_' . $file->getClientOriginalName();
                    // Store file and save full path in database
                    $filePath = $file->storeAs('business-clearances', $fileName, 'public');
                    $filePaths[] = $filePath;
                }
            }

            // Create business with logged-in user
            $business = business_management_list::create([
                'user_id' => Auth::id(),
                'business_name' => $validated['business_name'],
                'type_of_business' => $validated['type_of_business'],
                'address' => $validated['address'] ?? null,
                'business_clearance' => json_encode($filePaths), // Store as JSON array
                'status' => 'pending',
                'reason' => null,
            ]);

            // Send notifications to users who have business-management module notifications enabled
            // Wrap in try-catch to ensure business creation succeeds even if notifications fail
            Log::info('About to call sendBusinessManagementNotifications', [
                'business_id' => $business->id,
                'business_name' => $business->business_name,
                'auth_user_id' => Auth::id()
            ]);
            
            try {
                $this->sendBusinessManagementNotifications($business);
                Log::info('sendBusinessManagementNotifications completed successfully', [
                    'business_id' => $business->id
                ]);
            } catch (\Exception $notificationError) {
                // Log error but don't fail the business creation
                Log::error('Failed to send business management notifications: ' . $notificationError->getMessage(), [
                    'business_id' => $business->id,
                    'error' => $notificationError->getMessage(),
                    'file' => $notificationError->getFile(),
                    'line' => $notificationError->getLine(),
                    'trace' => $notificationError->getTraceAsString()
                ]);
                
                // FALLBACK: Try simple direct notification creation for Admin users
                try {
                    Log::info('Attempting fallback notification method');
                    $this->sendBusinessManagementNotificationsFallback($business);
                } catch (\Exception $fallbackError) {
                    Log::error('Fallback notification method also failed: ' . $fallbackError->getMessage());
                }
            }

            return response()->json([
                'success' => true,
                'message' => 'Business registered successfully',
                'business' => $business->load('user')
            ]);

        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Error registering business: ' . $e->getMessage()
            ], 500);
        }
    }

    public function show($id)
    {
        try {
            $business = business_management_list::with('user')->findOrFail($id);
            
            return response()->json([
                'success' => true,
                'business' => $business
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Business not found'
            ], 404);
        }
    }

    public function update(Request $request, $id)
    {
        try {
            $business = business_management_list::findOrFail($id);
            
            // Check if the current user owns this business
            if ($business->user_id != Auth::id()) {
                return response()->json([
                    'success' => false,
                    'message' => 'You can only edit your own business'
                ], 403);
            }

            $validated = $request->validate([
                'business_name' => 'required|string|max:255',
                'type_of_business' => 'required|string|max:255',
                'address' => 'nullable|string|max:500',
                'business_clearance' => 'nullable|array|max:5',
                'business_clearance.*' => 'file|mimes:pdf,jpg,jpeg,png|max:15360',
            ]);

            // Handle multiple file uploads
            if ($request->hasFile('business_clearance')) {
                // Delete old files if they exist
                if ($business->business_clearance) {
                    $oldFiles = json_decode($business->business_clearance, true);
                    if (is_array($oldFiles)) {
                        foreach ($oldFiles as $oldFile) {
                            if (Storage::disk('public')->exists($oldFile)) {
                                Storage::disk('public')->delete($oldFile);
                            }
                        }
                    } else {
                        // Handle legacy single file format
                        if (Storage::disk('public')->exists($business->business_clearance)) {
                            Storage::disk('public')->delete($business->business_clearance);
                        }
                    }
                }
                
                $files = $request->file('business_clearance');
                $filePaths = [];
                foreach ($files as $file) {
                    $fileName = time() . '_' . uniqid() . '_' . $file->getClientOriginalName();
                    // Store file and save full path in database
                    $filePath = $file->storeAs('business-clearances', $fileName, 'public');
                    $filePaths[] = $filePath;
                }
                $validated['business_clearance'] = json_encode($filePaths); // Store as JSON array
            }

            $business->update($validated);

            // Send notifications to users who have business-management module notifications enabled
            // Wrap in try-catch to ensure business update succeeds even if notifications fail
            try {
                $this->sendBusinessManagementNotifications($business->fresh(), true); // true indicates this is an update
                Log::info('Business update notification sent successfully', [
                    'business_id' => $business->id
                ]);
            } catch (\Exception $notificationError) {
                // Log error but don't fail the business update
                Log::error('Failed to send business management notifications on update: ' . $notificationError->getMessage(), [
                    'business_id' => $business->id,
                    'error' => $notificationError->getMessage(),
                    'file' => $notificationError->getFile(),
                    'line' => $notificationError->getLine(),
                    'trace' => $notificationError->getTraceAsString()
                ]);
            }

            return response()->json([
                'success' => true,
                'message' => 'Business updated successfully',
                'business' => $business->fresh()
            ]);

        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Error updating business: ' . $e->getMessage()
            ], 500);
        }
    }

    public function destroy($id)
    {
        try {
            $business = business_management_list::findOrFail($id);
            
            // Check if the current user owns this business
            if ($business->user_id != Auth::id()) {
                return response()->json([
                    'success' => false,
                    'message' => 'You can only delete your own business'
                ], 403);
            }
            
            // Delete files if they exist
            if ($business->business_clearance) {
                $files = json_decode($business->business_clearance, true);
                if (is_array($files)) {
                    // Handle multiple files (JSON array)
                    foreach ($files as $file) {
                        if (Storage::disk('public')->exists($file)) {
                            Storage::disk('public')->delete($file);
                        }
                    }
                } else {
                    // Handle legacy single file format
                    if (Storage::disk('public')->exists($business->business_clearance)) {
                        Storage::disk('public')->delete($business->business_clearance);
                    }
                }
            }
            
            $business->delete();

            return response()->json([
                'success' => true,
                'message' => 'Business deleted successfully'
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Error deleting business'
            ], 500);
        }
    }

    /**
     * Get users with their notification settings for business-management module
     * Returns collection of arrays with 'user' and 'notification_setting_id'
     */
    private function getBusinessManagementNotificationUsers()
    {
        try {
            $result = collect();
            
            // Find the business management module
            // The actual module name in database is "business management" (with space)
            $businessManagementModule = module::where('module_name', 'business management')
                ->where('status', 'active')
                ->first();
            
            // Try alternative names if first attempt fails
            if (!$businessManagementModule) {
                $possibleNames = ['business-management', 'Business Management', 'Business-Management', 'BusinessManagement'];
                foreach ($possibleNames as $name) {
                    $businessManagementModule = module::where('module_name', $name)
                        ->where('status', 'active')
                        ->first();
                    if ($businessManagementModule) {
                        break;
                    }
                }
            }
            
            if (!$businessManagementModule) {
                Log::warning('Business management module not found or inactive', [
                    'searched_names' => ['business management', 'business-management', 'Business Management']
                ]);
                return collect();
            }
            
            Log::info('Business management module found', [
                'module_id' => $businessManagementModule->id,
                'module_name' => $businessManagementModule->module_name
            ]);

            // Get users with active notification settings for business-management
            // Convert module_id to string for comparison (database stores as varchar)
            $moduleIdStr = (string) $businessManagementModule->id;
            
            $notificationSettings = notification_settings::with('user')
                ->where(function($query) use ($moduleIdStr, $businessManagementModule) {
                    $query->where('module_id', $moduleIdStr)
                          ->orWhere('module_id', $businessManagementModule->id)
                          ->orWhereRaw('CAST(module_id AS CHAR) = ?', [$moduleIdStr]);
                })
                ->where('status', 'active')
                ->whereNull('deleted_at')
                ->get();

            foreach ($notificationSettings as $setting) {
                if ($setting->user) {
                    $result->push([
                        'user' => $setting->user,
                        'notification_setting_id' => (string) $setting->id
                    ]);
                }
            }
            
            Log::info('Users with notification settings found', [
                'count' => $result->count(),
                'user_ids' => $result->pluck('user.id')->toArray()
            ]);

            return $result;

        } catch (\Exception $e) {
            Log::error('Error getting business-management notification users: ' . $e->getMessage(), [
                'trace' => $e->getTraceAsString()
            ]);
            return collect();
        }
    }

    /**
     * Send notification to business-management users when a business is created or updated
     */
    private function sendBusinessManagementNotifications($business, $isUpdate = false)
    {
        // Log immediately when method is called - before any try-catch
        Log::info('=== STARTING BUSINESS MANAGEMENT NOTIFICATIONS ===', [
            'business_id' => $business->id ?? 'NULL',
            'business_name' => $business->business_name ?? 'N/A',
            'created_by_user_id' => Auth::id(),
            'created_by_user_name' => Auth::user()->name ?? 'N/A',
            'business_exists' => $business ? 'yes' : 'no'
        ]);
        
        try {
            
            $users = $this->getBusinessManagementNotificationUsers();
            
            Log::info('Users retrieved for notifications', [
                'total_users' => $users->count(),
                'user_ids' => $users->pluck('user.id')->toArray(),
                'user_names' => $users->pluck('user.name')->toArray(),
                'user_roles' => $users->pluck('user.role')->toArray()
            ]);
            
            if ($users->isEmpty()) {
                Log::warning('No business-management notification users found - EXITING', [
                    'business_id' => $business->id
                ]);
                return;
            }

            // Load relationships for message
            $business->load('user');

            // Get business management module ID
            // The actual module name in database is "business management" (with space)
            $businessManagementModule = module::where('module_name', 'business management')
                ->where('status', 'active')
                ->first();
            
            // Try alternative names if first attempt fails
            if (!$businessManagementModule) {
                $possibleNames = ['business-management', 'Business Management', 'Business-Management', 'BusinessManagement'];
                foreach ($possibleNames as $name) {
                    $businessManagementModule = module::where('module_name', $name)
                        ->where('status', 'active')
                        ->first();
                    if ($businessManagementModule) {
                        break;
                    }
                }
            }
            
            $moduleId = $businessManagementModule ? $businessManagementModule->id : null;
            
            if (!$moduleId) {
                Log::warning('Business management module ID not found, cannot send notifications', [
                    'business_id' => $business->id
                ]);
                return;
            }

            $businessName = $business->business_name ?? 'N/A';
            $businessType = $business->type_of_business ?? 'N/A';
            $userName = $business->user->name ?? 'N/A';
            
            Log::info('Preparing to send business management notifications', [
                'business_id' => $business->id,
                'business_name' => $businessName,
                'module_id' => $moduleId,
                'users_count' => $users->count()
            ]);

            $notificationsSent = 0;
            foreach ($users as $userData) {
                $user = $userData['user'];
                $notificationSettingId = $userData['notification_setting_id'];
                
                // Skip the user who created the business
                if ($user->id === Auth::id()) {
                    continue;
                }

                try {
                    // Format notification message based on whether it's a new registration or update
                    // Truncate message to 255 characters to match database varchar limit
                    if ($isUpdate) {
                        $notificationMessage = Auth::user()->name . " has updated their business registration. Business Name: " . $businessName . ". Type: " . $businessType . ". Status: " . ($business->status ?? 'Pending');
                        $title = 'Business Registration Updated';
                    } else {
                        $notificationMessage = Auth::user()->name . " has submitted a new business registration. Business Name: " . $businessName . ". Type: " . $businessType . ". Status: " . ($business->status ?? 'Pending');
                        $title = 'New Business Registration';
                    }
                    $notificationMessage = mb_substr($notificationMessage, 0, 255);
                    
                    // Create notification directly with the notification_setting_id we already have
                    $notification = Notification::create([
                        'users_id' => (string) $user->id,
                        'type' => 'info',
                        'title' => $title,
                        'message' => $notificationMessage,
                        'notification_settings_id' => $notificationSettingId,
                        'read_at' => null,
                    ]);

                    // Verify notification was created
                    if (!$notification || !$notification->id) {
                        Log::error('Notification creation failed - notification object is invalid', [
                            'user_id' => $user->id,
                            'user_name' => $user->name,
                            'business_id' => $business->id
                        ]);
                        continue;
                    }
                    
                    Log::info('Business management notification sent successfully', [
                        'notification_id' => $notification->id,
                        'user_id' => $user->id,
                        'user_name' => $user->name,
                        'business_id' => $business->id,
                        'module_id' => $moduleId,
                        'notification_setting_id' => $notificationSettingId
                    ]);

                    $notificationsSent++;
                } catch (\Exception $e) {
                    Log::error('Error sending notification to user', [
                        'user_id' => $user->id,
                        'user_name' => $user->name,
                        'error' => $e->getMessage(),
                        'trace' => $e->getTraceAsString(),
                        'business_id' => $business->id,
                        'module_id' => $moduleId
                    ]);
                    // Continue to next user instead of stopping entire process
                    continue;
                }
            }

            Log::info('Business-management notifications completed', [
                'business_id' => $business->id,
                'total_users_found' => $users->count(),
                'notifications_sent' => $notificationsSent
            ]);

        } catch (\Exception $e) {
            Log::error('Error sending business-management notifications: ' . $e->getMessage(), [
                'business_id' => $business->id ?? null
            ]);
        }
    }

    /**
     * FALLBACK METHOD: Simple direct notification creation for Admin users
     * This bypasses all the complex logic and directly creates notifications using DB::table
     */
    private function sendBusinessManagementNotificationsFallback($business)
    {
        Log::info('=== FALLBACK NOTIFICATION METHOD ===', [
            'business_id' => $business->id
        ]);
        
        try {
            // Get all Admin users directly - use multiple query methods
            $adminUsers = User::where('active', true)
                ->where(function($query) {
                    $query->whereRaw('LOWER(TRIM(role)) = ?', ['admin'])
                          ->orWhere('role', 'admin')
                          ->orWhere('role', 'Admin')
                          ->orWhere('role', 'ADMIN');
                })
                ->get();
            
            Log::info('Fallback: Admin users found', [
                'count' => $adminUsers->count(),
                'user_ids' => $adminUsers->pluck('id')->toArray(),
                'user_names' => $adminUsers->pluck('name')->toArray()
            ]);
            
            if ($adminUsers->isEmpty()) {
                Log::warning('Fallback: No admin users found');
                return;
            }
            
            // Get business management module - try multiple names
            $module = module::where(function($query) {
                $query->where('module_name', 'business management')
                      ->orWhere('module_name', 'Business Management')
                      ->orWhere('module_name', 'business-management')
                      ->orWhere('module_name', 'Business-Management');
            })->where('status', 'active')->first();
            
            if (!$module) {
                Log::warning('Fallback: Business management module not found');
                return;
            }
            
            $businessName = $business->business_name ?? 'N/A';
            $businessType = $business->type_of_business ?? 'N/A';
            $applicantName = Auth::user()->name ?? 'User';
            $message = $applicantName . " has submitted a new business registration. Business Name: " . $businessName . ". Type: " . $businessType . ". Status: Pending";
            $message = mb_substr($message, 0, 255);
            
            foreach ($adminUsers as $admin) {
                if ($admin->id === Auth::id()) {
                    continue; // Skip the user who created the business
                }
                
                try {
                    // Create notification setting if it doesn't exist
                    $userIdStr = (string) $admin->id;
                    $moduleIdStr = (string) $module->id;
                    
                    $setting = notification_settings::firstOrCreate(
                        [
                            'users_id' => $userIdStr,
                            'module_id' => $moduleIdStr
                        ],
                        [
                            'status' => 'active'
                        ]
                    );
                    
                    if ($setting->status !== 'active') {
                        $setting->status = 'active';
                        $setting->save();
                    }
                    
                    // Directly insert notification using DB::table to bypass model issues
                    $notificationId = DB::table('notification')->insertGetId([
                        'users_id' => $userIdStr,
                        'type' => 'info',
                        'title' => 'New Business Registration',
                        'message' => $message,
                        'notification_settings_id' => (string) $setting->id,
                        'read_at' => null,
                        'created_at' => now(),
                        'updated_at' => now(),
                        'deleted_at' => null
                    ]);
                    
                    Log::info('Fallback: Notification created directly via DB::table', [
                        'notification_id' => $notificationId,
                        'user_id' => $userIdStr,
                        'admin_name' => $admin->name
                    ]);
                    
                    // Verify it exists
                    $verify = DB::table('notification')->where('id', $notificationId)->first();
                    if ($verify) {
                        Log::info('Fallback: Notification verified in database', [
                            'notification_id' => $notificationId,
                            'users_id' => $verify->users_id,
                            'title' => $verify->title
                        ]);
                    } else {
                        Log::error('Fallback: Notification not found after creation', [
                            'notification_id' => $notificationId
                        ]);
                    }
                } catch (\Exception $e) {
                    Log::error('Fallback: Error creating notification for admin', [
                        'admin_id' => $admin->id,
                        'admin_name' => $admin->name,
                        'error' => $e->getMessage(),
                        'file' => $e->getFile(),
                        'line' => $e->getLine()
                    ]);
                }
            }
        } catch (\Exception $e) {
            Log::error('Fallback notification method failed: ' . $e->getMessage(), [
                'trace' => $e->getTraceAsString()
            ]);
        }
    }

    public function downloadCertificationTemplate()
    {
        // Find template file
        $templateDirectory = storage_path('business_templates');
        $templateFile = null;
        
        if (is_dir($templateDirectory)) {
            $files = glob($templateDirectory . '/*');
            foreach ($files as $file) {
                if (is_file($file) && strpos(basename($file), 'application_for_certification') === 0) {
                    $templateFile = $file;
                    break;
                }
            }
        }
        
        if (!$templateFile || !file_exists($templateFile)) {
            abort(404, 'Application For Certification template not found');
        }

        $fileName = basename($templateFile);
        
        return response()->download($templateFile, $fileName);
    }
}
