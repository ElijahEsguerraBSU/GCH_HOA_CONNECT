<?php

namespace App\Http\Controllers\landlord;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\applied_landlord;
use App\Models\User;
use App\Models\module;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Auth;

class LandlordController extends Controller
{
    public function index(Request $request)
    {
        // Check if current user is admin
        $currentUser = Auth::user();
        $userRole = strtolower($currentUser->role ?? '');
        $isAdmin = in_array($userRole, ['admin']);
        
        $query = applied_landlord::with('user')
            ->where('submitted_by', auth()->id());
        
        // Non-admin users should not see archived records
        if (!$isAdmin) {
            $query->where('status', '!=', 'archived');
        }
        
        // Apply search filter - comprehensive search across all fields
        if ($request->has('search') && $request->search != '') {
            $search = trim($request->search); // Trim whitespace
            $query->where(function($q) use ($search) {
                // Search full name (CONCAT first_name, middle_initial, last_name)
                $q->whereRaw("CONCAT(first_name, ' ', COALESCE(middle_initial, ''), ' ', last_name) LIKE ?", ["%{$search}%"])
                  // Personal Information fields
                  ->orWhere('first_name', 'like', "%{$search}%")
                  ->orWhere('last_name', 'like', "%{$search}%")
                  ->orWhere('middle_initial', 'like', "%{$search}%")
                  ->orWhere('email', 'like', "%{$search}%")
                  ->orWhere('phone_number', 'like', "%{$search}%")
                  ->orWhere('nationality', 'like', "%{$search}%")
                  ->orWhere('address', 'like', "%{$search}%")
                  ->orWhere('civil_status', 'like', "%{$search}%")
                  // Property Information fields
                  ->orWhere('property_name', 'like', "%{$search}%")
                  ->orWhere('unit_number', 'like', "%{$search}%")
                  ->orWhere('property_address', 'like', "%{$search}%")
                  ->orWhere('unit_type', 'like', "%{$search}%")
                  ->orWhere('unit_condition', 'like', "%{$search}%")
                  ->orWhere('unit_condition_optional', 'like', "%{$search}%")
                  ->orWhere('status', 'like', "%{$search}%")
                  // Search by submitted user name
                  ->orWhereHas('user', function($q) use ($search) {
                      $q->where('name', 'like', "%{$search}%");
                  });
            });
        }
        
        // Apply status filter
        if ($request->has('status') && $request->status != 'all') {
            // Non-admin users cannot filter by archived status
            if (!$isAdmin && $request->status === 'archived') {
                // If non-admin tries to filter by archived, show nothing or redirect
                $query->whereRaw('1 = 0'); // Always false condition
            } else {
                $query->where('status', $request->status);
            }
        }
        
        $perPage = $request->input('per_page', 10);
        $landlords = $query->orderBy('created_at', 'desc')->paginate($perPage);
        
        return view('landlord.landlord', compact('landlords'));
    }

    public function store(Request $request)
    {
        try {
            $validated = $request->validate([
                // Personal Information
                'first_name' => 'required|string|max:255',
                'last_name' => 'required|string|max:255',
                'middle_initial' => 'nullable|string|max:10',
                'date_of_birth' => 'required|date',
                'address' => 'required|string|max:500',
                'civil_status' => 'required|string|in:Single,Married,Widowed,Separated,Divorced',
                'nationality' => 'required|string|max:100',
                'email' => 'required|email|max:255',
                'phone_number' => 'required|string|max:20',
                'years_of_residency' => 'required|integer|min:0',
                
                // Property Information
                'property_name' => 'required|string|max:255',
                'unit_number' => 'required|string|max:100',
                'property_address' => 'required|string|max:500',
                'unit_type' => 'required|string|max:100',
                'floor_area' => 'required|numeric|min:0',
                'unit_condition' => 'required|string|in:Fully Furnished,Semi-Furnished,Unfurnished',
                'unit_condition_optional' => 'nullable|string|max:255',
                
                // File upload - multiple files
                'supporting_documents.*' => 'nullable|file|mimes:pdf,jpg,jpeg,png|max:10240', // 10MB max per file
            ]);

            // Handle multiple file uploads
            $filePaths = [];
            if ($request->hasFile('supporting_documents')) {
                foreach ($request->file('supporting_documents') as $index => $file) {
                    $fileName = time() . '_' . uniqid() . '_' . $file->getClientOriginalName();
                    $path = $file->storeAs('landlord_documents', $fileName, 'public');
                    $filePaths[] = $path;
                }
            }
            
            // Convert array to JSON string for storage
            $filePathsJson = !empty($filePaths) ? json_encode($filePaths) : null;

            $landlord = applied_landlord::create([
                'submitted_by' => auth()->id(), // Current logged in user
                'first_name' => $validated['first_name'],
                'last_name' => $validated['last_name'],
                'middle_initial' => $validated['middle_initial'],
                'date_of_birth' => $validated['date_of_birth'],
                'address' => $validated['address'],
                'civil_status' => $validated['civil_status'],
                'nationality' => $validated['nationality'],
                'email' => $validated['email'],
                'phone_number' => $validated['phone_number'],
                'years_of_residency' => $validated['years_of_residency'],
                'property_name' => $validated['property_name'],
                'unit_number' => $validated['unit_number'],
                'property_address' => $validated['property_address'],
                'unit_type' => $validated['unit_type'],
                'floor_area' => $validated['floor_area'],
                'unit_condition' => $validated['unit_condition'],
                'unit_condition_optional' => $validated['unit_condition_optional'],
                'supporting_documents' => $filePathsJson,
                'status' => 'pending',
            ]);

            // Send notifications to Admin and Occupancy Manager when a homeowner applies for landlord
            try {
                $this->sendLandlordApplicationNotifications($landlord);
            } catch (\Exception $e) {
                Log::error('Failed to send landlord application notifications: ' . $e->getMessage(), [
                    'landlord_id' => $landlord->id,
                    'error' => $e->getTraceAsString()
                ]);
                // Don't fail the landlord creation if notification fails
            }

            return response()->json([
                'success' => true,
                'message' => 'Landlord registered successfully',
                'landlord' => $landlord->load('user')
            ]);

        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Error registering landlord: ' . $e->getMessage()
            ], 500);
        }
    }

    public function show($id)
    {
        try {
            // Check if current user is admin
            $currentUser = Auth::user();
            $userRole = strtolower($currentUser->role ?? '');
            $isAdmin = in_array($userRole, ['admin']);
            
            // Only show if it belongs to the current user
            $query = applied_landlord::with('user')
                ->where('id', $id)
                ->where('submitted_by', auth()->id());
            
            // Non-admin users cannot view archived records
            if (!$isAdmin) {
                $query->where('status', '!=', 'archived');
            }
            
            $landlord = $query->firstOrFail();
            
            return response()->json([
                'success' => true,
                'data' => $landlord
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Landlord not found or you do not have permission to view it'
            ], 404);
        }
    }

    public function update(Request $request, $id)
    {
        try {
            // Check if current user is admin
            $currentUser = Auth::user();
            $userRole = strtolower($currentUser->role ?? '');
            $isAdmin = in_array($userRole, ['admin']);
            
            // Only allow update if it belongs to the current user
            $query = applied_landlord::where('id', $id)
                ->where('submitted_by', auth()->id());
            
            // Non-admin users cannot update archived records
            if (!$isAdmin) {
                $query->where('status', '!=', 'archived');
            }
            
            $landlord = $query->firstOrFail();
            
            $validated = $request->validate([
                'first_name' => 'required|string|max:255',
                'last_name' => 'required|string|max:255',
                'middle_initial' => 'nullable|string|max:10',
                'date_of_birth' => 'required|date',
                'address' => 'required|string|max:500',
                'civil_status' => 'required|string|in:Single,Married,Widowed,Separated,Divorced',
                'nationality' => 'required|string|max:100',
                'email' => 'required|email|max:255',
                'phone_number' => 'required|string|max:20',
                'years_of_residency' => 'required|integer|min:0',
                'property_name' => 'required|string|max:255',
                'unit_number' => 'required|string|max:100',
                'property_address' => 'required|string|max:500',
                'unit_type' => 'required|string|max:100',
                'floor_area' => 'required|numeric|min:0',
                'unit_condition' => 'required|string|in:Fully Furnished,Semi-Furnished,Unfurnished',
                'unit_condition_optional' => 'nullable|string|max:255',
                'supporting_documents.*' => 'nullable|file|mimes:pdf,jpg,jpeg,png|max:10240',
            ]);

            // Handle multiple file uploads
            if ($request->hasFile('supporting_documents')) {
                // Delete old files if exist
                if ($landlord->supporting_documents) {
                    $oldFiles = json_decode($landlord->supporting_documents, true);
                    if (is_array($oldFiles)) {
                        foreach ($oldFiles as $oldFile) {
                            Storage::disk('public')->delete($oldFile);
                        }
                    } else {
                        // Handle single file (old format)
                        Storage::disk('public')->delete($landlord->supporting_documents);
                    }
                }
                
                // Upload new files
                $filePaths = [];
                foreach ($request->file('supporting_documents') as $index => $file) {
                    $fileName = time() . '_' . uniqid() . '_' . $file->getClientOriginalName();
                    $path = $file->storeAs('landlord_documents', $fileName, 'public');
                    $filePaths[] = $path;
                }
                
                // Store as JSON
                $validated['supporting_documents'] = json_encode($filePaths);
            }

            $landlord->update($validated);

            return response()->json([
                'success' => true,
                'message' => 'Landlord updated successfully',
                'data' => $landlord
            ]);

        } catch (\Exception $e) {
            Log::error('Landlord update error: ' . $e->getMessage());
            return response()->json([
                'success' => false,
                'message' => 'Failed to update landlord: ' . $e->getMessage()
            ], 500);
        }
    }

    public function destroy($id)
    {
        try {
            // Check if current user is admin
            $currentUser = Auth::user();
            $userRole = strtolower($currentUser->role ?? '');
            $isAdmin = in_array($userRole, ['admin']);
            
            // Only allow delete if it belongs to the current user
            $query = applied_landlord::where('id', $id)
                ->where('submitted_by', auth()->id());
            
            // Non-admin users cannot delete archived records
            if (!$isAdmin) {
                $query->where('status', '!=', 'archived');
            }
            
            $landlord = $query->firstOrFail();
            
            // Delete files if exist
            if ($landlord->supporting_documents) {
                $files = json_decode($landlord->supporting_documents, true);
                if (is_array($files)) {
                    foreach ($files as $file) {
                        Storage::disk('public')->delete($file);
                    }
                } else {
                    // Handle single file (old format)
                    Storage::disk('public')->delete($landlord->supporting_documents);
                }
            }
            
            $landlord->delete();

            return response()->json([
                'success' => true,
                'message' => 'Landlord deleted successfully'
            ]);

        } catch (\Exception $e) {
            Log::error('Landlord delete error: ' . $e->getMessage());
            return response()->json([
                'success' => false,
                'message' => 'Failed to delete landlord or you do not have permission'
            ], 500);
        }
    }

    public function updateStatus(Request $request, $id)
    {
        try {
            $validated = $request->validate([
                'status' => 'required|string|in:pending,approved,declined',
                'reason' => 'nullable|string|max:500',
            ]);

            $landlord = applied_landlord::findOrFail($id);
            $landlord->update([
                'status' => $validated['status'],
                'reason' => $validated['reason'] ?? null,
            ]);

            return response()->json([
                'success' => true,
                'message' => 'Status updated successfully',
                'data' => $landlord
            ]);

        } catch (\Exception $e) {
            Log::error('Status update error: ' . $e->getMessage());
            return response()->json([
                'success' => false,
                'message' => 'Failed to update status'
            ], 500);
        }
    }

    /**
     * Send notifications to Admin and Occupancy Manager when a homeowner applies for landlord
     */
    private function sendLandlordApplicationNotifications(applied_landlord $landlord)
    {
        try {
            $users = $this->getAdminAndOccupancyManagerUsers();
            
            if ($users->isEmpty()) {
                Log::info('No Admin or Occupancy Manager users found for landlord application notification');
                return;
            }

            // Load relationships for message
            $landlord->load('user');

            // Get landlord management module ID
            $landlordManagementModule = module::where('module_name', 'landlord management')
                ->where('status', 'active')
                ->first();
            
            // Try alternative names if first attempt fails
            if (!$landlordManagementModule) {
                $possibleNames = ['landlord-management', 'Landlord Management', 'Landlord-Management', 'LandlordManagement', 'landlord', 'Landlord'];
                foreach ($possibleNames as $name) {
                    $landlordManagementModule = module::where('module_name', $name)
                        ->where('status', 'active')
                        ->first();
                    if ($landlordManagementModule) {
                        break;
                    }
                }
            }
            
            $moduleId = $landlordManagementModule ? $landlordManagementModule->id : null;
            
            if (!$moduleId) {
                Log::warning('Landlord management module ID not found, cannot send notifications', [
                    'landlord_id' => $landlord->id
                ]);
                return;
            }

            $landlordName = $landlord->full_name ?? 'N/A';
            $propertyName = $landlord->property_name ?? 'N/A';
            $unitNumber = $landlord->unit_number ?? 'N/A';
            $applicantName = $landlord->user->name ?? 'N/A';
            
            Log::info('Preparing to send landlord application notifications', [
                'landlord_id' => $landlord->id,
                'landlord_name' => $landlordName,
                'module_id' => $moduleId,
                'users_count' => $users->count(),
                'applicant_name' => $applicantName
            ]);

            $notificationsSent = 0;
            foreach ($users as $user) {
                // Skip the user who submitted the application
                if ($user->id === Auth::id()) {
                    continue;
                }

                try {
                    // Admin and Occupancy Manager always receive notifications
                    $notification = $user->notifyInfo(
                        'New Landlord Application',
                        $applicantName . " has submitted a new landlord application. Name: " . $landlordName . ". Property: " . $propertyName . ". Unit: " . $unitNumber . ". Status: Pending",
                        $moduleId
                    );

                    Log::info('Landlord application notification sent successfully', [
                        'notification_id' => $notification->id,
                        'user_id' => $user->id,
                        'user_name' => $user->name,
                        'user_role' => $user->role,
                        'landlord_id' => $landlord->id,
                        'module_id' => $moduleId,
                        'notification_settings_id' => $notification->notification_settings_id ?? 'null'
                    ]);

                    $notificationsSent++;
                } catch (\Exception $e) {
                    Log::error('Error sending landlord application notification to user', [
                        'user_id' => $user->id,
                        'user_name' => $user->name,
                        'user_role' => $user->role ?? 'N/A',
                        'error' => $e->getMessage(),
                        'trace' => $e->getTraceAsString(),
                        'landlord_id' => $landlord->id,
                        'module_id' => $moduleId
                    ]);
                }
            }

            Log::info('Landlord application notifications completed', [
                'landlord_id' => $landlord->id,
                'total_users_found' => $users->count(),
                'notifications_sent' => $notificationsSent
            ]);

        } catch (\Exception $e) {
            Log::error('Error sending landlord application notifications: ' . $e->getMessage(), [
                'landlord_id' => $landlord->id ?? null,
                'trace' => $e->getTraceAsString()
            ]);
        }
    }

    /**
     * Get Admin and Occupancy Manager users
     */
    private function getAdminAndOccupancyManagerUsers()
    {
        try {
            $users = collect();
            
            // Get ADMIN users
            $adminUsers = User::where('active', true)
                ->where(function($query) {
                    $query->where('role', 'admin')
                          ->orWhere('role', 'Admin')
                          ->orWhere('role', 'ADMIN')
                          ->orWhereRaw('LOWER(role) = ?', ['admin']);
                })
                ->get();
            
            $users = $users->merge($adminUsers);
            
            Log::info('Admin users found for landlord application notifications', [
                'admin_count' => $adminUsers->count(),
                'admin_ids' => $adminUsers->pluck('id')->toArray()
            ]);

            // Get occupancy manager users
            $occupancyManagerUsers = User::where('active', true)
                ->where(function($query) {
                    $query->where('role', 'occupancy manager')
                          ->orWhere('role', 'Occupancy Manager')
                          ->orWhere('role', 'OCCUPANCY MANAGER')
                          ->orWhereRaw('LOWER(role) = ?', ['occupancy manager'])
                          ->orWhere('role', 'occupancies manager')
                          ->orWhereRaw('LOWER(role) = ?', ['occupancies manager']);
                })
                ->get();
            
            $users = $users->merge($occupancyManagerUsers);
            
            Log::info('Occupancy manager users found for landlord application notifications', [
                'occupancy_manager_count' => $occupancyManagerUsers->count(),
                'occupancy_manager_ids' => $occupancyManagerUsers->pluck('id')->toArray()
            ]);

            // Remove duplicates and return unique users
            $uniqueUsers = $users->unique('id');
            
            Log::info('Total unique Admin and Occupancy Manager users', [
                'total_count' => $uniqueUsers->count(),
                'user_ids' => $uniqueUsers->pluck('id')->toArray(),
                'user_names' => $uniqueUsers->pluck('name')->toArray()
            ]);

            return $uniqueUsers;

        } catch (\Exception $e) {
            Log::error('Error getting Admin and Occupancy Manager users: ' . $e->getMessage(), [
                'trace' => $e->getTraceAsString()
            ]);
            return collect();
        }
    }
}
