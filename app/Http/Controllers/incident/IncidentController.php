<?php

namespace App\Http\Controllers\incident;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\tbl_incident_report;
use App\Models\User;
use App\Models\module;
use App\Models\notification_settings;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Log;

class IncidentController extends Controller
{
    public function index(Request $request)
    {
        // Build query for user's incidents
        $query = tbl_incident_report::with(['user', 'assignedGuard'])
            ->where('user_id', Auth::id());
        
        // Apply search filter
        if ($request->has('search') && $request->search != '') {
            $search = $request->search;
            $query->where(function($q) use ($search) {
                $q->where('person_involved_name', 'like', "%{$search}%")
                  ->orWhere('designation', 'like', "%{$search}%")
                  ->orWhere('address', 'like', "%{$search}%")
                  ->orWhere('location_of_incident', 'like', "%{$search}%")
                  ->orWhere('status', 'like', "%{$search}%");
            });
        }
        
        $perPage = $request->input('per_page', 10);
        $userIncidents = $query->orderBy('created_at', 'desc')->paginate($perPage);

        $guards = User::where('role', 'guard')
                     ->where('is_online', 1)
                     ->select('id', 'name', 'contact_number')
                     ->get();
        
        return view('incident.incident', compact('userIncidents', 'guards'));
    }

    public function store(Request $request)
    {
        try {
            $validated = $request->validate([
                'person_involved_name' => 'required|string|max:255',
                'street' => 'required|string|max:255',
                'address' => 'required|string|max:500',
                'designation' => 'required|string|max:255',
                'datetime_of_incident' => 'required|date',
                'location_of_incident' => 'required|string|max:500',
                'guard_id' => 'nullable|exists:users,id',
            ]);

            $incident = new tbl_incident_report();
            $incident->user_id = Auth::id();
            $incident->person_involved_name = $validated['person_involved_name'];
            $incident->street = $validated['street'];
            $incident->address = $validated['address'];
            $incident->designation = $validated['designation'];
            $incident->datetime_of_incident = $validated['datetime_of_incident'];
            $incident->location_of_incident = $validated['location_of_incident'];
            $incident->guard_id = $validated['guard_id'];
            $incident->status = 'Pending';
            $incident->save();
            
            // Send notification to incident-report-management users
            $this->sendIncidentReportManagementNotifications($incident);
            
            // If request is AJAX/JSON, return JSON. Otherwise redirect back with flash message
            if ($request->ajax() || $request->wantsJson()) {
                return response()->json([
                    'message' => 'Incident report submitted successfully',
                    'id' => $incident->id,
                ], 201);
            }

            // Log diagnostics to understand why form posts render JSON in browser
            \Log::info('Incident store non-AJAX submission', [
                'ajax' => $request->ajax(),
                'expectsJson' => $request->expectsJson(),
                'wantsJson' => $request->wantsJson(),
                'accept' => $request->header('Accept'),
                'x_requested_with' => $request->header('X-Requested-With'),
            ]);

            return redirect()->route('incident.index')
                ->with('success', 'Incident report submitted successfully');
        } catch (\Exception $e) {
            \Log::error('Error storing incident: ' . $e->getMessage());
            return response()->json([
                'error' => 'Error submitting incident report: ' . $e->getMessage()
            ], 500);
        }
    }

    public function show($id)
    {
        $incident = tbl_incident_report::with(['user', 'assignedGuard'])
            ->where('user_id', Auth::id())
            ->findOrFail($id);

        return response()->json($incident); 
    }

    public function update(Request $request, $id)
    {
        try {
            $incident = tbl_incident_report::where('user_id', Auth::id())
                ->where('status', 'Pending')
                ->findOrFail($id);

            $validated = $request->validate([
                'person_involved_name' => 'required|string|max:255',
                'street' => 'required|string|max:255',
                'address' => 'required|string|max:500',
                'designation' => 'required|string|max:255',
                'datetime_of_incident' => 'required|date',
                'location_of_incident' => 'required|string|max:500',
                'guard_id' => 'nullable|exists:users,id',
            ]);

            $incident->update([
                'person_involved_name' => $validated['person_involved_name'],
                'street' => $validated['street'],
                'address' => $validated['address'],
                'designation' => $validated['designation'],
                'datetime_of_incident' => $validated['datetime_of_incident'],
                'location_of_incident' => $validated['location_of_incident'],
                'guard_id' => $validated['guard_id'],
            ]);

            return response()->json([
                'message' => 'Incident report updated successfully',
                'incident' => $incident->fresh()    
            ]);
        } catch (\Exception $e) {
            \Log::error('Error updating incident: ' . $e->getMessage());
            return response()->json([
                'error' => 'Error updating incident report: ' . $e->getMessage()
            ], 500);
        }
    }

    public function destroy($id)
    {
        $incident = tbl_incident_report::where('user_id', Auth::id())
            ->where('status', 'Pending')
            ->findOrFail($id);

        $incident->delete();

        return response()->json([
            'message' => 'Incident report deleted successfully',
            'incident' => $incident->fresh()
        ]);
    }

    /**
     * Get users who have notification settings for incident report management
     */
    private function getIncidentReportManagementNotificationUsers()
    {
        try {
            // Find the incident management module
            $incidentManagementModule = module::where('module_name', 'incident management')
                ->where('status', 'active')
                ->first();
            
            if (!$incidentManagementModule) {
                Log::warning('Incident management module not found or inactive');
                return collect();
            }

            // Get users with active notification settings for incident management
            $notificationSettings = notification_settings::with('user')
                ->where('module_id', $incidentManagementModule->id)
                ->where('status', 'active')
                ->get();

            return $notificationSettings->map(function ($setting) {
                return $setting->user;
            })->filter(); // Remove any null users

        } catch (\Exception $e) {
            Log::error('Error getting incident management notification users: ' . $e->getMessage());
            return collect();
        }
    }

    /**
     * Send notification to incident-report-management users when an incident is created
     */
    private function sendIncidentReportManagementNotifications($incident)
    {
        try {
            $users = $this->getIncidentReportManagementNotificationUsers();
            
            if ($users->isEmpty()) {
                Log::info('No incident management notification users found');
                return;
            }

            // Load relationships for message
            $incident->load(['user']);

            // Get incident management module ID
            $incidentManagementModule = module::where('module_name', 'incident management')
                ->where('status', 'active')
                ->first();
            $moduleId = $incidentManagementModule ? $incidentManagementModule->id : null;

            $personName = $incident->person_involved_name ?? 'N/A';
            $location = $incident->location_of_incident ?? 'N/A';
            $userName = $incident->user->name ?? 'N/A';

            $notificationsSent = 0;
            foreach ($users as $user) {
                // Skip the user who created the incident
                if ($user->id === Auth::id()) {
                    continue;
                }

                try {
                    $notification = $user->notifyInfo(
                        'New Incident Report',
                        Auth::user()->name . " has submitted a new incident report. Person involved: " . $personName . ". Location: " . $location . ". Status: " . ($incident->status ?? 'Pending'),
                        $moduleId
                    );

                    Log::info('Incident management notification sent successfully', [
                        'notification_id' => $notification->id,
                        'user_id' => $user->id,
                        'user_name' => $user->name,
                        'incident_id' => $incident->id
                    ]);

                    $notificationsSent++;
                } catch (\Exception $e) {
                    Log::error('Error sending notification to user', [
                        'user_id' => $user->id,
                        'user_name' => $user->name,
                        'error' => $e->getMessage(),
                        'incident_id' => $incident->id
                    ]);
                }
            }

            Log::info('Incident management notifications completed', [
                'incident_id' => $incident->id,
                'total_users_found' => $users->count(),
                'notifications_sent' => $notificationsSent
            ]);

        } catch (\Exception $e) {
            Log::error('Error sending incident management notifications: ' . $e->getMessage(), [
                'incident_id' => $incident->id ?? null
            ]);
        }
    }
}
