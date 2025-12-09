<?php

namespace App\Http\Controllers\landlordmanagement;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\applied_landlord;
use App\Models\User;
use App\Models\module;
use App\Models\notification_settings;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Auth;

class LandlordManagementController extends Controller
{
    public function index(Request $request)
    {
        // Get per_page from request, default to 10
        $perPage = $request->input('per_page', 10);
        
        // Start query with user relationship
        $query = applied_landlord::with('user');
        
        // Search functionality
        if ($request->has('search') && $request->search !== '') {
            $search = $request->search;
            $query->where(function($q) use ($search) {
                $q->where('first_name', 'LIKE', "%{$search}%")
                  ->orWhere('last_name', 'LIKE', "%{$search}%")
                  ->orWhere('middle_initial', 'LIKE', "%{$search}%")
                  ->orWhere('email', 'LIKE', "%{$search}%")
                  ->orWhere('phone_number', 'LIKE', "%{$search}%")
                  ->orWhere('property_name', 'LIKE', "%{$search}%")
                  ->orWhere('unit_number', 'LIKE', "%{$search}%")
                  ->orWhere('unit_type', 'LIKE', "%{$search}%")
                  ->orWhere('nationality', 'LIKE', "%{$search}%");
            });
        }
        
        // Status filter - exclude archived by default, show only when explicitly requested
        if ($request->has('status') && $request->status !== 'all') {
            if ($request->status === 'archived') {
                $query->where('status', 'archived');
            } else {
                // For other statuses, show only that status (archived items are excluded)
                $query->where('status', $request->status);
            }
        } else {
            // When showing all, exclude archived items by default
            $query->where('status', '!=', 'archived');
        }
        
        // Order by creation date
        $query->orderBy('created_at', 'desc');
        
        // Paginate results and append query parameters
        $landlords = $query->paginate($perPage)->appends($request->except('page'));

        return view('landlord-management.landlord-management', compact('landlords'));
    }

    public function show($id)
    {
        try {
            $landlord = applied_landlord::with('user')->findOrFail($id);
            
            // Get tenants for this landlord (tenants with same user_id as landlord's submitted_by)
            $tenants = \App\Models\tbl_tenant_list::where('user_id', $landlord->submitted_by)
                ->orderBy('created_at', 'desc')
                ->get();
            
            // Add tenants to landlord data
            $landlord->tenants = $tenants;
            
            return response()->json([
                'success' => true,
                'data' => $landlord
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Landlord not found'
            ], 404);
        }
    }

    public function store(Request $request)
    {
        try {
            $validated = $request->validate([
                'first_name' => 'required|string|max:255',
                'last_name' => 'required|string|max:255',
                'middle_initial' => 'nullable|string|max:10',
                'date_of_birth' => 'required|date',
                'address' => 'required|string|max:500',
                'civil_status' => 'required|string|max:255',
                'nationality' => 'required|string|max:255',
                'email' => 'required|email|max:255',
                'phone_number' => 'required|string|max:255',
                'years_of_residency' => 'required|integer|min:0',
                'property_name' => 'required|string|max:255',
                'unit_number' => 'required|string|max:255',
                'property_address' => 'required|string|max:500',
                'unit_type' => 'required|string|max:255',
                'floor_area' => 'required|numeric|min:0',
                'unit_condition' => 'required|string|max:255',
                'unit_condition_optional' => 'nullable|string|max:500',
                'supporting_documents' => 'nullable|file|mimes:pdf,jpg,jpeg,png|max:10240',
            ]);

            $filePath = null;
            if ($request->hasFile('supporting_documents')) {
                $file = $request->file('supporting_documents');
                $fileName = time() . '_' . $file->getClientOriginalName();
                $filePath = $file->storeAs('landlord_documents', $fileName, 'public');
            }

            $landlord = applied_landlord::create([
                'submitted_by' => auth()->id(),
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
                'supporting_documents' => $filePath,
                'status' => 'pending',
            ]);

            return response()->json([
                'success' => true,
                'message' => 'Landlord registered successfully',
                'landlord' => $landlord->load('user')
            ]);

        } catch (\Exception $e) {
            Log::error('Landlord registration error: ' . $e->getMessage());
            return response()->json([
                'success' => false,
                'message' => 'Error registering landlord: ' . $e->getMessage()
            ], 500);
        }
    }

    public function update(Request $request, $id)
    {
        try {
            $landlord = applied_landlord::findOrFail($id);

            $validated = $request->validate([
                'first_name' => 'required|string|max:255',
                'last_name' => 'required|string|max:255',
                'middle_initial' => 'nullable|string|max:10',
                'date_of_birth' => 'required|date',
                'address' => 'required|string|max:500',
                'civil_status' => 'required|string|max:255',
                'nationality' => 'required|string|max:255',
                'email' => 'required|email|max:255',
                'phone_number' => 'required|string|max:255',
                'years_of_residency' => 'required|integer|min:0',
                'property_name' => 'required|string|max:255',
                'unit_number' => 'required|string|max:255',
                'property_address' => 'required|string|max:500',
                'unit_type' => 'required|string|max:255',
                'floor_area' => 'required|numeric|min:0',
                'unit_condition' => 'required|string|max:255',
                'unit_condition_optional' => 'nullable|string|max:500',
                'supporting_documents' => 'nullable|file|mimes:pdf,jpg,jpeg,png|max:10240',
            ]);

            // Handle file upload
            if ($request->hasFile('supporting_documents')) {
                // Delete old file if exists
                if ($landlord->supporting_documents && Storage::disk('public')->exists($landlord->supporting_documents)) {
                    Storage::disk('public')->delete($landlord->supporting_documents);
                }
                
                $file = $request->file('supporting_documents');
                $fileName = time() . '_' . $file->getClientOriginalName();
                $filePath = $file->storeAs('landlord_documents', $fileName, 'public');
                $validated['supporting_documents'] = $filePath;
            }

            $landlord->update($validated);

            return response()->json([
                'success' => true,
                'message' => 'Landlord updated successfully',
                'landlord' => $landlord->fresh()->load('user')
            ]);

        } catch (\Exception $e) {
            Log::error('Landlord update error: ' . $e->getMessage());
            return response()->json([
                'success' => false,
                'message' => 'Error updating landlord: ' . $e->getMessage()
            ], 500);
        }
    }

    public function destroy($id)
    {
        try {
            $landlord = applied_landlord::findOrFail($id);
            
            // Archive the landlord instead of deleting
            $landlord->update([
                'status' => 'archived'
            ]);

            return response()->json([
                'success' => true,
                'message' => 'Landlord archived successfully'
            ]);
        } catch (\Exception $e) {
            Log::error('Landlord archive error: ' . $e->getMessage());
            return response()->json([
                'success' => false,
                'message' => 'Error archiving landlord'
            ], 500);
        }
    }

    public function unarchive($id)
    {
        try {
            $landlord = applied_landlord::findOrFail($id);
            
            // Check if landlord is archived
            if ($landlord->status !== 'archived') {
                return response()->json([
                    'success' => false,
                    'message' => 'Landlord is not archived'
                ], 400);
            }
            
            // Unarchive the landlord - set status back to Pending
            $landlord->update([
                'status' => 'pending'
            ]);

            return response()->json([
                'success' => true,
                'message' => 'Landlord unarchived successfully and restored to Pending status'
            ]);
        } catch (\Exception $e) {
            Log::error('Landlord unarchive error: ' . $e->getMessage());
            return response()->json([
                'success' => false,
                'message' => 'Error unarchiving landlord: ' . $e->getMessage()
            ], 500);
        }
    }

    public function updateStatus(Request $request, $id)
    {
        try {
            $landlord = applied_landlord::findOrFail($id);

            $validated = $request->validate([
                'status' => 'required|in:pending,approved,declined,archived',
                'reason' => 'nullable|string|max:1000'
            ]);

            $landlord->update([
                'status' => $validated['status'],
                'reason' => $validated['reason']
            ]);

            return response()->json([
                'success' => true,
                'message' => 'Landlord status updated successfully',
                'landlord' => $landlord->fresh()->load('user')
            ]);

        } catch (\Exception $e) {
            Log::error('Landlord status update error: ' . $e->getMessage());
            return response()->json([
                'success' => false,
                'message' => 'Error updating landlord status: ' . $e->getMessage()
            ], 500);
        }
    }

    public function approve(Request $request, $id)
    {
        try {
            $landlord = applied_landlord::with('user')->findOrFail($id);
            
            // Validate file upload
            $validated = $request->validate([
                'business_clearance_attachments' => 'required|file|mimes:pdf,jpg,jpeg,png|max:10240', // max 10MB
            ]);

            // Handle file upload
            $filePath = null;
            if ($request->hasFile('business_clearance_attachments')) {
                $file = $request->file('business_clearance_attachments');
                $fileName = time() . '_' . $file->getClientOriginalName();
                $filePath = $file->storeAs('business_clearance_attachments', $fileName, 'public');
                
                Log::info('Business clearance file uploaded', [
                    'landlord_id' => $landlord->id,
                    'file_path' => $filePath,
                    'file_name' => $fileName
                ]);
            }
            
            // Update status to approved and save business clearance attachment
            $landlord->update([
                'status' => 'approved',
                'reason' => null, // Clear any previous rejection reason
                'business_clearance_attachments' => $filePath
            ]);

            // Activity logging for landlord approval
            try {
                if (auth()->check()) {
                    auth()->user()->logCustom(
                        "Approved landlord application for " . $landlord->full_name . 
                        " - Property: " . $landlord->property_name . 
                        " - Unit: " . $landlord->unit_number .
                        " - Business clearance uploaded"
                    );
                    Log::info('Landlord approval activity logged successfully', [
                        'user_id' => auth()->id(),
                        'landlord_id' => $landlord->id,
                        'clearance_file' => $filePath
                    ]);
                }
            } catch (\Exception $e) {
                Log::error('Error logging landlord approval activity: ' . $e->getMessage());
            }

            // Send notification to the user who submitted the landlord application
            try {
                $this->notifyLandlordApplicant($landlord, 'approved', null);
            } catch (\Exception $e) {
                Log::error('Error sending approval notification to landlord applicant: ' . $e->getMessage());
            }

            return response()->json([
                'success' => true,
                'message' => 'Landlord application approved successfully with business clearance uploaded'
            ]);
        } catch (\Illuminate\Validation\ValidationException $e) {
            Log::error('Landlord approval validation error: ' . json_encode($e->errors()));
            return response()->json([
                'success' => false,
                'message' => 'Validation error: ' . implode(', ', array_map(fn($errors) => implode(', ', $errors), $e->errors()))
            ], 422);
        } catch (\Exception $e) {
            Log::error('Landlord approval error: ' . $e->getMessage());
            Log::error('Stack trace: ' . $e->getTraceAsString());
            return response()->json([
                'success' => false,
                'message' => 'Failed to approve landlord application: ' . $e->getMessage()
            ], 500);
        }
    }

    public function decline(Request $request, $id)
    {
        try {
            $landlord = applied_landlord::with('user')->findOrFail($id);
            
            // Get rejection reason from request
            $reason = $request->input('reason', '');
            
            if (empty($reason)) {
                return response()->json([
                    'success' => false,
                    'message' => 'Reason for decline is required'
                ], 400);
            }
            
            // Update status to declined and save reason
            $landlord->update([
                'status' => 'declined',
                'reason' => $reason
            ]);

            // Activity logging for landlord decline
            try {
                if (auth()->check()) {
                    $logMessage = "Declined landlord application for " . $landlord->full_name . 
                        " - Property: " . $landlord->property_name . 
                        " - Unit: " . $landlord->unit_number;
                    
                    if ($reason) {
                        $logMessage .= " - Reason: " . $reason;
                    }
                    
                    auth()->user()->logCustom($logMessage);
                    Log::info('Landlord decline activity logged successfully', [
                        'user_id' => auth()->id(),
                        'landlord_id' => $landlord->id
                    ]);
                }
            } catch (\Exception $e) {
                Log::error('Error logging landlord decline activity: ' . $e->getMessage());
            }

            // Send notification to the user who submitted the landlord application
            try {
                $this->notifyLandlordApplicant($landlord, 'declined', $reason);
            } catch (\Exception $e) {
                Log::error('Error sending decline notification to landlord applicant: ' . $e->getMessage());
            }

            return response()->json([
                'success' => true,
                'message' => 'Landlord application declined successfully'
            ]);
        } catch (\Exception $e) {
            Log::error('Landlord decline error: ' . $e->getMessage());
            return response()->json([
                'success' => false,
                'message' => 'Failed to decline landlord application'
            ], 500);
        }
    }

    /**
     * Send notification to landlord applicant about status change
     * Only notifies the user who submitted the landlord application
     */
    private function notifyLandlordApplicant(applied_landlord $landlord, string $newStatus, ?string $reason = null)
    {
        try {
            // Load the user relationship
            $landlord->load('user');
            
            // Get the landlord applicant - only notify them
            $landlordApplicant = User::find($landlord->submitted_by);
            if (!$landlordApplicant) {
                Log::warning('Landlord applicant not found', [
                    'landlord_id' => $landlord->id,
                    'submitted_by' => $landlord->submitted_by
                ]);
                return;
            }

            // Skip if the applicant is the one who made the action (shouldn't happen, but safety check)
            if ($landlord->submitted_by === Auth::id()) {
                Log::info('Skipping notification - landlord applicant is the one who made the action', [
                    'landlord_id' => $landlord->id,
                    'submitted_by' => $landlord->submitted_by
                ]);
                return;
            }

            // Get the landlord module - prioritize "apply landlord" first (user-facing module)
            $landlordModule = module::where('module_name', 'apply landlord')
                ->where('status', 'active')
                ->first();
            
            // Try alternative names if first attempt fails
            if (!$landlordModule) {
                $possibleNames = [
                    'landlord',
                    'tenant & landlord management',
                    'tenant landlord management',
                    'landlord management',
                    'tenant landlord'
                ];
                foreach ($possibleNames as $name) {
                    $landlordModule = module::where('module_name', $name)
                        ->where('status', 'active')
                        ->first();
                    if ($landlordModule) {
                        break;
                    }
                }
            }
            
            if (!$landlordModule) {
                Log::warning('Landlord module not found for applicant notification', [
                    'landlord_id' => $landlord->id,
                    'searched_names' => ['apply landlord', 'landlord', 'tenant & landlord management', 'tenant landlord management', 'landlord management', 'tenant landlord']
                ]);
                // Continue anyway - notification will be sent without module ID
            }
            
            if ($landlordModule) {
                Log::info('Landlord module found for applicant notification', [
                    'module_id' => $landlordModule->id,
                    'module_name' => $landlordModule->module_name,
                    'landlord_id' => $landlord->id
                ]);
            }

            // Check if applicant has the "apply landlord" module permission
            // This is the key requirement: user must have the landlord module
            $hasLandlordModule = $landlordApplicant->hasPermission('apply landlord');
            
            if (!$hasLandlordModule) {
                Log::warning('Landlord applicant does not have "apply landlord" module permission', [
                    'user_id' => $landlordApplicant->id,
                    'user_name' => $landlordApplicant->name,
                    'landlord_id' => $landlord->id
                ]);
                return; // Don't send notification if user doesn't have the landlord module
            }

            $title = '';
            $message = '';

            if ($newStatus === 'approved') {
                $title = 'Landlord Application Approved';
                $message = "Your landlord application for {$landlord->property_name} - Unit {$landlord->unit_number} has been approved!";
            } elseif ($newStatus === 'declined') {
                $title = 'Landlord Application Declined';
                $message = "Your landlord application for {$landlord->property_name} - Unit {$landlord->unit_number} has been declined.";
                if ($reason) {
                    $message .= " Reason: {$reason}";
                }
            } else {
                $title = 'Landlord Application Status Updated';
                $message = "Your landlord application for {$landlord->property_name} - Unit {$landlord->unit_number} status has been changed to {$newStatus}.";
            }

            // Check if applicant has notification setting for this module (if module found)
            // If they have the module but no notification setting, we'll still send the notification
            // but log a warning
            if ($landlordModule) {
                $applicantNotificationSetting = notification_settings::where('users_id', $landlordApplicant->id)
                    ->where('module_id', $landlordModule->id)
                    ->where('status', 'active')
                    ->first();
                
                if (!$applicantNotificationSetting) {
                    Log::info('Landlord applicant has module permission but no notification setting - notification will still be sent', [
                        'user_id' => $landlordApplicant->id,
                        'user_name' => $landlordApplicant->name,
                        'module_id' => $landlordModule->id,
                        'module_name' => $landlordModule->module_name,
                        'landlord_id' => $landlord->id
                    ]);
                    // Continue to send notification since user has the module permission
                }
            }
            
            // Send notification to the applicant with appropriate type
            try {
                $moduleId = $landlordModule ? $landlordModule->id : null;
                
                if ($newStatus === 'approved') {
                    $notification = $landlordApplicant->notifySuccess(
                        $title,
                        $message,
                        $moduleId
                    );
                } elseif ($newStatus === 'declined') {
                    $notification = $landlordApplicant->notifyError(
                        $title,
                        $message,
                        $moduleId
                    );
                } else {
                    $notification = $landlordApplicant->notifyInfo(
                        $title,
                        $message,
                        $moduleId
                    );
                }

                Log::info('Landlord applicant notification sent successfully', [
                    'notification_id' => $notification->id,
                    'user_id' => $landlordApplicant->id,
                    'landlord_id' => $landlord->id,
                    'status' => $newStatus
                ]);
            } catch (\Exception $e) {
                Log::error('Error sending notification to landlord applicant: ' . $e->getMessage(), [
                    'user_id' => $landlordApplicant->id,
                    'landlord_id' => $landlord->id,
                    'status' => $newStatus
                ]);
            }
        } catch (\Exception $e) {
            Log::error('Error in notifyLandlordApplicant: ' . $e->getMessage(), [
                'landlord_id' => $landlord->id ?? 'null',
                'status' => $newStatus
            ]);
        }
    }
}
