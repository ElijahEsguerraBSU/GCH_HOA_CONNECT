<?php

namespace App\Http\Controllers\incidentreportmanagement;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\tbl_incident_report;
use App\Models\User;
use App\Models\module;
use App\Models\notification_settings;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\JsonResponse;

class IncidentReportManagementController extends Controller
{
    public function index(Request $request)
    {
        // Build query for incident reports
        $query = tbl_incident_report::with(['user', 'assignedGuard']);
        
        // Apply search filter
        if ($request->has('search') && $request->search != '') {
            $search = $request->search;
            $query->where(function($q) use ($search) {
                $q->where('person_involved_name', 'like', "%{$search}%")
                  ->orWhere('designation', 'like', "%{$search}%")
                  ->orWhere('address', 'like', "%{$search}%")
                  ->orWhere('location_of_incident', 'like', "%{$search}%")
                  ->orWhere('status', 'like', "%{$search}%")
                  ->orWhereHas('user', function($q) use ($search) {
                      $q->where('name', 'like', "%{$search}%")
                        ->orWhere('email', 'like', "%{$search}%");
                  });
            });
        }
        
        // Apply status filter
        if ($request->has('status') && $request->status != 'all') {
            $query->where('status', $request->status);
        }
        
        // Apply street filter
        if ($request->has('location') && $request->location != 'all') {
            $query->where('street', $request->location);
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
                case 'this-year':
                    $query->whereYear('created_at', $now->year);
                    break;
            }
        }
        
        $perPage = $request->input('per_page', 10);
        $incidentReports = $query->orderBy('created_at', 'desc')->paginate($perPage);

        $guards = User::where('role', 'security personnel')->where('active', true)->get();
        
        // Get unique streets from incident reports
        $streets = tbl_incident_report::whereNotNull('street')
            ->where('street', '!=', '')
            ->distinct()
            ->pluck('street')
            ->sort()
            ->values();

        return view('incident-report-management.incident-report-management', compact('incidentReports', 'guards', 'streets'));
    }

    public function show($id): JsonResponse
    {
        $incidentReport = tbl_incident_report::with(['user', 'assignedGuard'])->findOrFail($id);
        
        return response()->json([
            'success' => true,
            'data' => $incidentReport
        ]);
    }

    public function updateStatus(Request $request, $id): JsonResponse
    {
        $request->validate([
            'status' => 'required|in:Pending,Under Investigation,Resolved,Closed'
        ]);

        $incidentReport = tbl_incident_report::findOrFail($id);
        $incidentReport->update([
            'status' => $request->status
        ]);

        // Send notification to incident report (incident) users
        $this->sendIncidentReportNotifications($incidentReport, 'updated', null, $request->status);

        return response()->json([
            'success' => true,
            'message' => 'Incident report status updated successfully',
            'data' => $incidentReport
        ]);
    }

    public function assign(Request $request, $id): JsonResponse
    {
        $request->validate([
            'guard_id' => 'required|exists:users,id'
        ]);

        $incidentReport = tbl_incident_report::findOrFail($id);
        $incidentReport->update([
            'guard_id' => $request->guard_id,
            'status' => 'Under Investigation'
        ]);

        $incidentReport->load(['assignedGuard']);

        // Send notification to incident report (incident) users
        $assignedGuard = User::find($request->guard_id);
        $guardName = $assignedGuard ? $assignedGuard->name : 'N/A';
        $this->sendIncidentReportNotifications($incidentReport, 'assigned', $guardName);

        return response()->json([
            'success' => true,
            'message' => 'Guard assigned successfully',
            'data' => $incidentReport
        ]);
    }

    /**
     * Get users who have notification settings for incident report (incident)
     */
    private function getIncidentReportNotificationUsers()
    {
        try {
            // Find the incident report module (incident module)
            $incidentReportModule = module::where('module_name', 'incident report')
                ->where('status', 'active')
                ->first();
            
            if (!$incidentReportModule) {
                \Log::warning('Incident report module not found or inactive');
                return collect();
            }

            // Get users with active notification settings for incident report
            $notificationSettings = notification_settings::with('user')
                ->where('module_id', $incidentReportModule->id)
                ->where('status', 'active')
                ->get();

            return $notificationSettings->map(function ($setting) {
                return $setting->user;
            })->filter(); // Remove any null users

        } catch (\Exception $e) {
            \Log::error('Error getting incident report notification users: ' . $e->getMessage());
            return collect();
        }
    }

    /**
     * Send notification to incident report (incident) users when an incident report is updated
     * Only notifies the request owner (the user who submitted the incident report)
     */
    private function sendIncidentReportNotifications($incidentReport, $action, $guardName = null, $newStatus = null)
    {
        try {
            // Load relationships for message
            $incidentReport->load(['user']);

            // Only notify the request owner, not all users with notification settings
            // Skip if the request owner is the one who made the action (shouldn't happen, but safety check)
            if ($incidentReport->user_id === Auth::id()) {
                \Log::info('Skipping notification - request owner is the one who made the action', [
                    'incident_report_id' => $incidentReport->id,
                    'user_id' => $incidentReport->user_id
                ]);
                return;
            }

            // Get the request owner
            $requestOwner = User::find($incidentReport->user_id);
            if (!$requestOwner) {
                \Log::warning('Request owner not found', [
                    'incident_report_id' => $incidentReport->id,
                    'user_id' => $incidentReport->user_id
                ]);
                return;
            }

            // Get incident report module ID
            $incidentReportModule = module::where('module_name', 'incident report')
                ->where('status', 'active')
                ->first();
            $moduleId = $incidentReportModule ? $incidentReportModule->id : null;

            $personName = $incidentReport->person_involved_name ?? 'N/A';
            $location = $incidentReport->location_of_incident ?? 'N/A';
            $currentStatus = $newStatus ?? $incidentReport->status;

            // Build notification message based on action
            $message = '';
            $title = '';
            
            if ($action === 'updated') {
                $title = 'Incident Report Updated';
                $message = "Your incident report has been updated. Person involved: " . $personName . ". Location: " . $location . ". New status: " . $currentStatus;
            } elseif ($action === 'assigned') {
                $title = 'Guard Assigned to Incident Report';
                $message = "A guard has been assigned to your incident report. Person involved: " . $personName . ". Location: " . $location . ". Assigned guard: " . $guardName . ". Status: Under Investigation";
            }

            // Send notification only to the request owner
            try {
                $notification = $requestOwner->notifyInfo(
                    $title,
                    $message,
                    $moduleId
                );

                \Log::info('Incident report notification sent to request owner', [
                    'notification_id' => $notification->id,
                    'user_id' => $requestOwner->id,
                    'user_name' => $requestOwner->name,
                    'incident_report_id' => $incidentReport->id,
                    'action' => $action
                ]);
            } catch (\Exception $e) {
                \Log::error('Error sending notification to request owner', [
                    'user_id' => $requestOwner->id,
                    'user_name' => $requestOwner->name,
                    'error' => $e->getMessage(),
                    'incident_report_id' => $incidentReport->id
                ]);
            }

            \Log::info('Incident report notification completed', [
                'incident_report_id' => $incidentReport->id,
                'action' => $action,
                'request_owner_id' => $requestOwner->id,
                'request_owner_name' => $requestOwner->name
            ]);

        } catch (\Exception $e) {
            \Log::error('Error sending incident report notifications: ' . $e->getMessage(), [
                'incident_report_id' => $incidentReport->id ?? null,
                'action' => $action ?? null
            ]);
        }
    }
}
