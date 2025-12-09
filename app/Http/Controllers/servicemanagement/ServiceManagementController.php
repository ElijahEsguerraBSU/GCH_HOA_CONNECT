<?php

namespace App\Http\Controllers\servicemanagement;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\tbl_service_management_complaints;
use App\Models\module;
use App\Models\notification_settings;
use Illuminate\Support\Facades\Auth;

class ServiceManagementController extends Controller
{
    public function index()
    {
        // Get per_page from request, default to 10
        $perPage = request('per_page', 10);
        
        // Get all service requests with relationships - using the correct relationship names
        $serviceRequests = tbl_service_management_complaints::with(['user', 'serviceCategory', 'serviceCategory.serviceType'])
            ->orderBy('created_at', 'desc')
            ->paginate($perPage);

        return view('service-management.service-management', compact('serviceRequests'));
    }

    public function show($id)
    {
        $request = tbl_service_management_complaints::with(['user', 'serviceCategory', 'serviceCategory.serviceType'])
            ->findOrFail($id);

        return response()->json($request);
    }

    public function approve($id)
    {
        try {
            $serviceRequest = tbl_service_management_complaints::findOrFail($id);
            $serviceRequest->status = 'Approved';
            $serviceRequest->save();
            
            // Send notification to service request (complaints) users
            $this->sendServiceRequestNotifications($serviceRequest, 'approved');
            
            return response()->json([
                'message' => 'Service request approved successfully',
                'serviceRequest' => $serviceRequest->fresh()
            ]);
        } catch (\Exception $e) {
            \Log::error('Error approving service request: ' . $e->getMessage());
            return response()->json([
                'error' => 'Error approving service request: ' . $e->getMessage()
            ], 500);
        }
    }

    public function decline(Request $request, $id)
    {
        try {
            $validated = $request->validate([
                'reason' => 'required|string|max:1000',
            ]);
            
            $serviceRequest = tbl_service_management_complaints::findOrFail($id);
            $serviceRequest->status = 'Declined';
            $serviceRequest->reason = $validated['reason'];
            $serviceRequest->save();
            
            // Send notification to service request (complaints) users
            $this->sendServiceRequestNotifications($serviceRequest, 'declined', $validated['reason']);
            
            return response()->json([
                'message' => 'Service request declined successfully',
                'serviceRequest' => $serviceRequest->fresh()
            ]);
        } catch (\Exception $e) {
            \Log::error('Error declining service request: ' . $e->getMessage());
            return response()->json([
                'error' => 'Error declining service request: ' . $e->getMessage()
            ], 500);
        }
    }

    public function update(Request $request, $id)
    {
        try {
            $serviceRequest = tbl_service_management_complaints::findOrFail($id);
            
            $validated = $request->validate([
                'status' => 'required|in:Pending,In Progress,Completed,Cancelled',
                'notes' => 'nullable|string|max:1000',
            ]);
            
            $serviceRequest->status = $validated['status'];
            if (isset($validated['notes'])) {
                $serviceRequest->notes = $validated['notes'];
            }
            
            $serviceRequest->save();
            
            // Send notification to service request (complaints) users
            $this->sendServiceRequestNotifications($serviceRequest, 'updated', null, $validated['status']);
            
            return response()->json([
                'message' => 'Service request status updated successfully',
                'serviceRequest' => $serviceRequest->fresh()
            ]);
        } catch (\Exception $e) {
            \Log::error('Error updating service request status: ' . $e->getMessage());
            return response()->json([
                'error' => 'Error updating service request status: ' . $e->getMessage()
            ], 500);
        }
    }

    /**
     * Get users who have notification settings for service request (complaints)
     */
    private function getServiceRequestNotificationUsers()
    {
        try {
            // Find the service request module (complaints module)
            $serviceRequestModule = module::where('module_name', 'service request')
                ->where('status', 'active')
                ->first();
            
            if (!$serviceRequestModule) {
                \Log::warning('Service request module not found or inactive');
                return collect();
            }

            // Get users with active notification settings for service request
            $notificationSettings = notification_settings::with('user')
                ->where('module_id', $serviceRequestModule->id)
                ->where('status', 'active')
                ->get();

            return $notificationSettings->map(function ($setting) {
                return $setting->user;
            })->filter(); // Remove any null users

        } catch (\Exception $e) {
            \Log::error('Error getting service request notification users: ' . $e->getMessage());
            return collect();
        }
    }

    /**
     * Send notification to service request (complaints) users when a service request is updated
     * Only notifies the request owner (the user who submitted the complaint)
     */
    private function sendServiceRequestNotifications($serviceRequest, $action, $reason = null, $newStatus = null)
    {
        try {
            // Load relationships for message
            $serviceRequest->load(['serviceCategory.serviceType', 'user']);

            // Only notify the request owner, not all users with notification settings
            // Skip if the request owner is the one who made the action (shouldn't happen, but safety check)
            if ($serviceRequest->user_id === Auth::id()) {
                \Log::info('Skipping notification - request owner is the one who made the action', [
                    'service_request_id' => $serviceRequest->id,
                    'user_id' => $serviceRequest->user_id
                ]);
                return;
            }

            // Get the request owner
            $requestOwner = \App\Models\User::find($serviceRequest->user_id);
            if (!$requestOwner) {
                \Log::warning('Request owner not found', [
                    'service_request_id' => $serviceRequest->id,
                    'user_id' => $serviceRequest->user_id
                ]);
                return;
            }

            // Get service request module ID
            $serviceRequestModule = module::where('module_name', 'service request')
                ->where('status', 'active')
                ->first();
            $moduleId = $serviceRequestModule ? $serviceRequestModule->id : null;

            $serviceType = $serviceRequest->serviceCategory->serviceType->type ?? 'N/A';
            $category = $serviceRequest->serviceCategory->category ?? 'N/A';
            $currentStatus = $newStatus ?? $serviceRequest->status;

            // Build notification message based on action
            $message = '';
            $title = '';
            
            if ($action === 'approved') {
                $title = 'Service Request Approved';
                $message = "Your service request has been approved: " . $serviceType . " - " . $category . ". Status: " . $currentStatus;
            } elseif ($action === 'declined') {
                $title = 'Service Request Declined';
                $message = "Your service request has been declined: " . $serviceType . " - " . $category . ". ";
                if ($reason) {
                    $message .= "Reason: " . substr($reason, 0, 150) . (strlen($reason) > 150 ? '...' : '');
                }
            } elseif ($action === 'updated') {
                $title = 'Service Request Updated';
                $message = "Your service request status has been updated: " . $serviceType . " - " . $category . ". New status: " . $currentStatus;
            }

            // Send notification only to the request owner
            try {
                $notification = $requestOwner->notifyInfo(
                    $title,
                    $message,
                    $moduleId
                );

                \Log::info('Service request notification sent to request owner', [
                    'notification_id' => $notification->id,
                    'user_id' => $requestOwner->id,
                    'user_name' => $requestOwner->name,
                    'service_request_id' => $serviceRequest->id,
                    'action' => $action
                ]);
            } catch (\Exception $e) {
                \Log::error('Error sending notification to request owner', [
                    'user_id' => $requestOwner->id,
                    'user_name' => $requestOwner->name,
                    'error' => $e->getMessage(),
                    'service_request_id' => $serviceRequest->id
                ]);
            }

            \Log::info('Service request notification completed', [
                'service_request_id' => $serviceRequest->id,
                'action' => $action,
                'request_owner_id' => $requestOwner->id,
                'request_owner_name' => $requestOwner->name
            ]);

        } catch (\Exception $e) {
            \Log::error('Error sending service request notifications: ' . $e->getMessage(), [
                'service_request_id' => $serviceRequest->id ?? null,
                'action' => $action ?? null
            ]);
        }
    }
}
