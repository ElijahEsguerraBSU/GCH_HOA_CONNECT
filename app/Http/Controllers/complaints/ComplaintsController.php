<?php

namespace App\Http\Controllers\complaints;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\tbl_service_management_type;
use App\Models\tbl_service_management_category;
use App\Models\tbl_service_management_complaints;
use App\Models\module;
use App\Models\notification_settings;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Auth;

class ComplaintsController extends Controller
{
    public function index(Request $request)
    {
        $serviceTypes = tbl_service_management_type::where('status', 'Active')->get();
        
        // Get all categories for filter
        $categories = tbl_service_management_category::where('status', 'Active')
            ->distinct()
            ->orderBy('category')
            ->get();
        
        // Get distinct statuses for filter
        $statuses = tbl_service_management_complaints::where('user_id', auth()->id())
            ->distinct()
            ->pluck('status')
            ->filter()
            ->sort()
            ->values();
        
        // Build query for user's complaints
        $query = tbl_service_management_complaints::with(['serviceCategory.serviceType'])
            ->where('user_id', auth()->id());
        
        // Apply search filter
        if ($request->has('search') && $request->search != '') {
            $search = $request->search;
            $query->where(function($q) use ($search) {
                $q->where('complaint_description', 'like', "%{$search}%")
                  ->orWhereHas('serviceCategory', function($q) use ($search) {
                      $q->where('category', 'like', "%{$search}%");
                  })
                  ->orWhereHas('serviceCategory.serviceType', function($q) use ($search) {
                      $q->where('type', 'like', "%{$search}%");
                  });
            });
        }
        
        // Apply service type filter
        if ($request->has('service_type') && $request->service_type != 'all') {
            $query->whereHas('serviceCategory.serviceType', function($q) use ($request) {
                $q->where('type', $request->service_type);
            });
        }
        
        // Apply category filter
        if ($request->has('category') && $request->category != 'all') {
            $query->whereHas('serviceCategory', function($q) use ($request) {
                $q->where('category', $request->category);
            });
        }
        
        // Apply status filter
        if ($request->has('status') && $request->status != 'all') {
            $query->where('status', $request->status);
        }
        
        // Apply date filter
        if ($request->has('date_filter') && $request->date_filter != 'all') {
            $dateFilter = $request->date_filter;
            $now = now();
            
            switch ($dateFilter) {
                case 'today':
                    $query->whereDate('created_at', $now->toDateString());
                    break;
                case 'yesterday':
                    $query->whereDate('created_at', $now->subDay()->toDateString());
                    break;
                case 'this-week':
                    $query->whereBetween('created_at', [$now->startOfWeek(), $now->endOfWeek()]);
                    break;
                case 'last-week':
                    $query->whereBetween('created_at', [$now->subWeek()->startOfWeek(), $now->subWeek()->endOfWeek()]);
                    break;
                case 'this-month':
                    $query->whereMonth('created_at', $now->month)->whereYear('created_at', $now->year);
                    break;
                case 'last-month':
                    $query->whereMonth('created_at', $now->subMonth()->month)->whereYear('created_at', $now->subMonth()->year);
                    break;
            }
        }
        
        $perPage = $request->input('per_page', 10);
        $userComplaints = $query->orderBy('created_at', 'desc')->paginate($perPage);
        
        return view('complaints.index-complaints', compact('serviceTypes', 'categories', 'statuses', 'userComplaints'));
    }

    public function getCategories($typeId)
    {
        $categories = tbl_service_management_category::where('service_management_type_id', $typeId)
            ->where('status', 'Active')
            ->get();
        return response()->json($categories);
    }

    public function show($id)
    {
        $complaint = tbl_service_management_complaints::with(['serviceCategory.serviceType', 'user'])
            ->where('id', $id)
            ->where('user_id', auth()->id())
            ->firstOrFail();
        
        // Debug: Log the complaint data
        Log::info('Complaint data loaded successfully', [
            'complaint_id' => $complaint->id,
            'service_type' => $complaint->serviceType?->type ?? 'N/A',
            'service_category' => $complaint->serviceCategory?->category ?? 'N/A'
        ]);
        
        return response()->json($complaint);
    }

    public function store(Request $request)
    {
        // Check if this is a custom "Other" request
        if ($request->input('is_custom') == '1') {
            $validated = $request->validate([
                'custom_service_type' => 'required|string|max:255',
                'complaint_description' => 'required|string',
            ]);
            
            // Find or create "Other" service type
            $otherServiceType = tbl_service_management_type::firstOrCreate(
                ['type' => 'Other'],
                ['status' => 'Active']
            );
            
            // Use the custom service type as the category name
            $customCategory = tbl_service_management_category::firstOrCreate(
                [
                    'service_management_type_id' => $otherServiceType->id,
                    'category' => $validated['custom_service_type']
                ],
                ['status' => 'Active']
            );
            
            // Create complaint
            $complaint = new tbl_service_management_complaints();
            $complaint->service_management_category_id = $customCategory->id;
            $complaint->user_id = auth()->id();
            $complaint->complaint_description = $validated['complaint_description'];
            $complaint->status = 'Pending';
            $complaint->save();
        } else {
            // Regular flow
            $validated = $request->validate([
                'service_management_category_id' => 'required|exists:tbl_service_management_category,id',
                'complaint_description' => 'required|string',
            ]);

            $complaint = new tbl_service_management_complaints();
            $complaint->service_management_category_id = $validated['service_management_category_id'];
            $complaint->user_id = auth()->id();
            $complaint->complaint_description = $validated['complaint_description'];
            $complaint->status = 'Pending';
            $complaint->save();
        }

        // Send notification to service-management users
        $this->sendServiceManagementNotifications($complaint);

        return response()->json([
            'message' => 'Service request submitted successfully',
            'id' => $complaint->id,
        ], 201);
    }

    public function update(Request $request, $id)
    {
        try {
            $complaint = tbl_service_management_complaints::where('id', $id)
                ->where('user_id', auth()->id())
                ->firstOrFail();
            
            $validated = $request->validate([
                'complaint_description' => 'required|string',
            ]);
            
            $complaint->complaint_description = $validated['complaint_description'];
            $complaint->save();
            
            return response()->json([
                'message' => 'Service request updated successfully',
                'complaint' => $complaint->fresh()
            ]);
        } catch (\Exception $e) {
            Log::error('Error updating complaint: ' . $e->getMessage());
            return response()->json([
                'error' => 'Error updating complaint: ' . $e->getMessage()
            ], 500);
        }
    }

    public function destroy($id)
    {
        $complaint = tbl_service_management_complaints::where('id', $id)
            ->where('user_id', auth()->id())
            ->firstOrFail();
        
        $complaint->delete();
        
        return response()->json([
            'message' => 'Service request deleted successfully'
        ]);
    }

    /**
     * Get users who have notification settings for service management
     */
    private function getServiceManagementNotificationUsers()
    {
        try {
            // Find the service management module
            $serviceManagementModule = module::where('module_name', 'service management')
                ->where('status', 'active')
                ->first();
            
            if (!$serviceManagementModule) {
                Log::warning('Service management module not found or inactive');
                return collect();
            }

            // Get users with active notification settings for service management
            $notificationSettings = notification_settings::with('user')
                ->where('module_id', $serviceManagementModule->id)
                ->where('status', 'active')
                ->get();

            return $notificationSettings->map(function ($setting) {
                return $setting->user;
            })->filter(); // Remove any null users

        } catch (\Exception $e) {
            Log::error('Error getting service management notification users: ' . $e->getMessage());
            return collect();
        }
    }

    /**
     * Send notification to service-management users when a complaint is created
     */
    private function sendServiceManagementNotifications($complaint)
    {
        try {
            $users = $this->getServiceManagementNotificationUsers();
            
            if ($users->isEmpty()) {
                Log::info('No service management notification users found');
                return;
            }

            // Load relationships for message
            $complaint->load(['serviceCategory.serviceType', 'user']);

            // Get service management module ID
            $serviceManagementModule = module::where('module_name', 'service management')
                ->where('status', 'active')
                ->first();
            $moduleId = $serviceManagementModule ? $serviceManagementModule->id : null;

            $serviceType = $complaint->serviceCategory->serviceType->type ?? 'N/A';
            $category = $complaint->serviceCategory->category ?? 'N/A';
            $userName = $complaint->user->name ?? 'N/A';

            $notificationsSent = 0;
            foreach ($users as $user) {
                // Skip the user who created the complaint
                if ($user->id === Auth::id()) {
                    continue;
                }

                try {
                    $notification = $user->notifyInfo(
                        'New Service Request',
                        Auth::user()->name . " has submitted a new service request: " . $serviceType . " - " . $category . ". Description: " . substr($complaint->complaint_description, 0, 100) . (strlen($complaint->complaint_description) > 100 ? '...' : ''),
                        $moduleId
                    );

                    Log::info('Service management notification sent successfully', [
                        'notification_id' => $notification->id,
                        'user_id' => $user->id,
                        'user_name' => $user->name,
                        'complaint_id' => $complaint->id
                    ]);

                    $notificationsSent++;
                } catch (\Exception $e) {
                    Log::error('Error sending notification to user', [
                        'user_id' => $user->id,
                        'user_name' => $user->name,
                        'error' => $e->getMessage(),
                        'complaint_id' => $complaint->id
                    ]);
                }
            }

            Log::info('Service management notifications completed', [
                'complaint_id' => $complaint->id,
                'total_users_found' => $users->count(),
                'notifications_sent' => $notificationsSent
            ]);

        } catch (\Exception $e) {
            Log::error('Error sending service management notifications: ' . $e->getMessage(), [
                'complaint_id' => $complaint->id ?? null
            ]);
        }
    }
}
