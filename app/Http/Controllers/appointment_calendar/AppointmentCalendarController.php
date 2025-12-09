<?php

namespace App\Http\Controllers\appointment_calendar;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\appointment;
use App\Models\appointment_category;
use App\Models\business_management_list;
use App\Models\tbl_service_management_complaints;

class AppointmentCalendarController extends Controller
{
    /**
     * Get formatted appointments data (shared by both index and API)
     * This ensures both the sidebar and main calendar use the exact same data
     */
    private function getFormattedAppointments()
    {
        // Get all appointments with relationships
        return appointment::with(['users', 'appointmentCategory'])
            ->get()
            ->map(function($appointment) {
                // Ensure date is formatted as YYYY-MM-DD string
                $appointmentDate = $appointment->appointment_date;
                
                // CRITICAL: Get time from the "time" column in appointment table
                // This is the primary and ONLY source for scheduled time
                $appointmentTime = $appointment->time; // Direct access to time column
                
                // Format the date properly (extract date part only)
                if ($appointmentDate instanceof \Carbon\Carbon || $appointmentDate instanceof \DateTime) {
                    $appointmentDate = $appointmentDate->format('Y-m-d');
                } elseif (is_string($appointmentDate) && (strpos($appointmentDate, ' ') !== false || strpos($appointmentDate, 'T') !== false)) {
                    // Extract just the date part (remove time if present)
                    $appointmentDate = preg_split('/[\sT]/', $appointmentDate)[0];
                }
                
                // Ensure appointmentTime is preserved as-is (can be null, empty, or any string format)
                // JavaScript will handle parsing and formatting
                // DO NOT convert null to empty string - keep it as null so JavaScript knows it's missing
                
                // Get related business management data for this user
                $businessData = null;
                if ($appointment->users_id) {
                    $businessData = business_management_list::where('user_id', $appointment->users_id)
                        ->latest()
                        ->first();
                }
                
                // Get related service management data for this user
                $serviceData = null;
                if ($appointment->users_id) {
                    $serviceData = tbl_service_management_complaints::with(['user', 'serviceCategory', 'serviceCategory.serviceType'])
                        ->where('user_id', $appointment->users_id)
                        ->latest()
                        ->first();
                }
                
                return [
                    'id' => $appointment->id,
                    'description' => $appointment->description,
                    'appointment_date' => $appointmentDate, // Ensure it's YYYY-MM-DD format
                    'time' => $appointmentTime, // Direct from time column - can be null, empty, or any format
                    'tracking_number' => $appointment->tracking_number,
                    'remarks' => $appointment->remarks,
                    'status' => $appointment->status,
                    'user_id' => $appointment->users_id,
                    'user_name' => $appointment->users ? $appointment->users->name : 'N/A',
                    'category_name' => $appointment->appointmentCategory ? $appointment->appointmentCategory->category_name : 'N/A',
                    // Link to business management data
                    'business_management' => $businessData ? [
                        'id' => $businessData->id,
                        'business_name' => $businessData->business_name,
                        'type_of_business' => $businessData->type_of_business,
                        'status' => $businessData->status,
                        'address' => $businessData->address,
                    ] : null,
                    // Link to service management data
                    'service_management' => $serviceData ? [
                        'id' => $serviceData->id,
                        'complaint_description' => $serviceData->complaint_description,
                        'status' => $serviceData->status,
                        'category' => $serviceData->serviceCategory ? $serviceData->serviceCategory->category : null,
                        'service_type' => $serviceData->serviceCategory && $serviceData->serviceCategory->serviceType 
                            ? $serviceData->serviceCategory->serviceType->type 
                            : null,
                    ] : null,
                ];
            })->toArray();
    }
    
    public function index()
    {
        // Use shared method to ensure consistency with API
        $appointments = $this->getFormattedAppointments();
        
        return view('appointment_calendar.appointment_calendar', compact('appointments'));
    }
    
    public function getAppointments()
    {
        // Use shared method to ensure consistency with index()
        // This guarantees both sidebar and main calendar use identical data
        $appointments = $this->getFormattedAppointments();
        
        // Log for debugging (remove in production)
        \Log::info('API getAppointments called', [
            'total_appointments' => count($appointments),
            'sample_appointment' => $appointments[0] ?? null,
        ]);
        
        return response()->json($appointments);
    }
    
    private function getStatusClass($status)
    {
        switch(strtolower($status)) {
            case 'pending':
                return 'bg-warning';
            case 'approved':
                return 'bg-success';
            case 'cancelled':
                return 'bg-danger';
            case 'completed':
                return 'bg-primary';
            default:
                return 'bg-info';
        }
    }
}
