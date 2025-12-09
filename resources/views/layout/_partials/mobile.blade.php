<!-- BEGIN: Mobile Menu -->
<div class="mobile-menu md:hidden">
    <div class="mobile-menu-bar">
        <a href="{{ route('dashboard') }}" class="flex items-center mr-auto">
        @if($topbarTopLogo && $topbarTopLogo->value)
        <img alt="Topbar Logo" class="w-12 h-12 object-contain" src="{{ asset('storage/' . $topbarTopLogo->value) }}">
            @else
                <img alt="" class="w-12 h-12 object-contain" src="dist/images/logo.png">
            @endif
        </a>
        <a href="javascript:;" class="mobile-menu-toggler"> <i data-lucide="bar-chart-2" class="w-8 h-8 text-white transform -rotate-90"></i> </a>
    </div>
    <div class="scrollable" style="max-height: calc(120vh - 100px); overflow-y: auto; overflow-x: hidden;">
        <a href="javascript:;" class="mobile-menu-toggler"> <i data-lucide="x-circle" class="w-8 h-8 text-white transform -rotate-90"></i> </a>
        @php
            $currentUser = auth()->user();
            $userRole = strtolower($currentUser->role ?? '');
            $isHomeownerRole = in_array($userRole, ['homeowner', 'home owners', 'home-owner', 'homeowners', 'home owners association', 'home owners assoc']);
            $isServiceManager = $userRole === 'service manager' || $userRole === 'services manager';
            $isSecurityPersonnel = $userRole === 'guard' || $userRole === 'security' || $userRole === 'security personnel' || $userRole === 'security guard';
            $isOperationalManager = $userRole === 'operational manager' || $userRole === 'operation manager' || $userRole === 'operations manager';
            $isFinancialManager = $userRole === 'financial manager' || $userRole === 'finance manager';
            $isAppointmentCoordinator = $userRole === 'appointment coordinator' || $userRole === 'appointments coordinator';
            $isOccupancyManager = $userRole === 'occupancy manager' || $userRole === 'occupancy';
        @endphp
        <ul class="scrollable__content py-2" style="padding-bottom: 50px;">
            <li>
                <a href="{{ url('dashboard') }}" class="menu">
                    <div class="menu__icon"> <i data-lucide="home"></i> </div>
                            <div class="menu__title"> Dashboard </div>
                </a>
            </li>
            @if(auth()->user()->hasPermission('message'))
            <li>
                <a href="{{ route('chat.index') }}" class="menu">
                    <div class="menu__icon"> <i data-lucide="message-circle"></i> </div>
                    <div class="menu__title"> Message </div>
                </a>
            </li>
            @endif
            @if(auth()->user()->hasPermission('feedback'))
            <li>
                <a href="{{ route('feedback.index') }}" class="menu">
                    <div class="menu__icon"> <i data-lucide="file-text"></i> </div>
                    <div class="menu__title"> Feedback </div>
                </a>
            </li>
            @endif
            @if(auth()->user()->hasPermission('vehicle'))
            <li>
                <a href="{{ route('vehicle.index') }}" class="menu">
                    <div class="menu__icon"> <i data-lucide="car"></i> </div>
                    <div class="menu__title"> Vehicle </div>
                </a>
            </li>
            @endif
            @if(auth()->user()->hasPermission('apply business'))
            <li>
                <a href="{{ route('business.index') }}" class="menu">
                    <div class="menu__icon"> <i data-lucide="file-text"></i> </div>
                    <div class="menu__title"> Apply Business </div>
                </a>
            </li>
            @endif
            @if(auth()->user()->hasPermission('apply landlord'))
            <li>
                <a href="{{ route('landlord.index') }}" class="menu">
                    <div class="menu__icon"> <i data-lucide="file-text"></i> </div>
                    <div class="menu__title"> Apply Landlord </div>
                </a>
            </li>
            @endif
            @if(auth()->user()->hasPermission('apply appointment'))
            <li>
                <a href="{{ route('apply-appointment.index') }}" class="menu">
                    <div class="menu__icon"> <i data-lucide="calendar"></i> </div>
                    <div class="menu__title"> Apply Appointment </div>
                </a>
            </li>
            @endif
            
            <li class="menu__devider my-6"></li>
            
            @if($currentUser->hasPermission('service request'))
                @if($isHomeownerRole)
                <li>
                    <a href="{{ route('complaints.index') }}" class="menu">
                        <div class="menu__icon"> <i data-lucide="users"></i> </div>
                        <div class="menu__title"> Service Request </div>
                    </a>
                </li>
                @else
                <li>
                    <a href="javascript:;" class="menu">
                        <div class="menu__icon"> <i data-lucide="users"></i> </div>
                        <div class="menu__title"> Service Request <i data-lucide="chevron-down" class="menu__sub-icon "></i> </div>
                    </a>
                    <ul class="">
                        <li>
                            <a href="{{ route('complaints.index') }}" class="menu">
                                <div class="menu__icon"> <i data-lucide="activity"></i> </div>
                                <div class="menu__title"> Request Now </div>
                            </a>
                        </li>
                    </ul>
                </li>
                @endif
            @endif
            @if($currentUser->hasPermission('incident report'))
                @if($isHomeownerRole)
                <li>
                    <a href="{{ route('incident.index') }}" class="menu">
                        <div class="menu__icon"> <i data-lucide="alert-circle"></i> </div>
                        <div class="menu__title"> Incident Report </div>
                    </a>
                </li>
                @else
                <li>
                    <a href="javascript:;" class="menu">
                        <div class="menu__icon"> <i data-lucide="alert-circle"></i> </div>
                        <div class="menu__title"> Incident Report <i data-lucide="chevron-down" class="menu__sub-icon "></i> </div>
                    </a>
                    <ul class="">
                        <li>
                            <a href="{{ route('incident.index') }}" class="menu">
                                <div class="menu__icon"> <i data-lucide="activity"></i> </div>
                                <div class="menu__title"> Report Now </div>
                            </a>
                        </li>
                    </ul>
                </li>
                @endif
            @endif
            @if($currentUser->hasPermission('billing payment'))
                @if($isHomeownerRole)
                <li>
                    <a href="{{ route('billing-payment.index') }}" class="menu">
                        <div class="menu__icon"> <i data-lucide="credit-card"></i> </div>
                        <div class="menu__title"> Billing Payment </div>
                    </a>
                </li>
                @else
                <li>
                    <a href="javascript:;" class="menu">
                        <div class="menu__icon"> <i data-lucide="credit-card"></i> </div>
                        <div class="menu__title"> Billing Payment <i data-lucide="chevron-down" class="menu__sub-icon "></i> </div>
                    </a>
                    <ul class="">
                        <li>
                            <a href="{{ route('billing-payment.index') }}" class="menu">
                                <div class="menu__icon"> <i data-lucide="activity"></i> </div>
                                <div class="menu__title"> Payment Now </div>
                            </a>
                        </li>
                    </ul>
                </li>
                @endif
            @endif
            @if($currentUser->hasPermission('information') || $currentUser->hasPermission('user management') || $currentUser->hasPermission('establishment management') || $currentUser->hasPermission('vehicle management') || $currentUser->hasPermission('service management') || $currentUser->hasPermission('incident management') || $currentUser->hasPermission('announcements management') || $currentUser->hasPermission('billing management') || $currentUser->hasPermission('payment account management') || $currentUser->hasPermission('feedback management') || $currentUser->hasPermission('appointment management'))
            <li>
                <a href="javascript:;" class="menu">
                    <div class="menu__icon"> <i data-lucide="trello"></i> </div>
                    <div class="menu__title"> Management <i data-lucide="chevron-down" class="menu__sub-icon "></i> </div>
                </a>
                <ul class="">
                    @if(auth()->user()->hasPermission('user management'))
                    <li>
                        <a href="{{ route('usermanagement.index') }}" class="menu">
                            <div class="menu__icon"> <i data-lucide="activity"></i> </div>
                            <div class="menu__title"> User Management </div>
                        </a>
                    </li>
                    @endif
                    @if(auth()->user()->hasPermission('establishment management'))
                    <li>
                        <a href="{{ route('businessmanagement.index') }}" class="menu">
                            <div class="menu__icon"> <i data-lucide="activity"></i> </div>
                            <div class="menu__title"> Establishment Management </div>
                        </a>
                    </li>
                    @endif
                    @if(auth()->user()->hasPermission('vehicle management'))
                    <li>
                        <a href="{{ route('vehiclemanagement.index') }}" class="menu">
                            <div class="menu__icon"> <i data-lucide="activity"></i> </div>
                            <div class="menu__title"> Vehicle Management </div>
                        </a>
                    </li>
                    @endif
                    @if(auth()->user()->hasPermission('service management'))
                    <li>
                        <a href="{{ route('service-management.index') }}" class="menu">
                            <div class="menu__icon"> <i data-lucide="activity"></i> </div>
                            <div class="menu__title"> Service Management </div>
                        </a>
                    </li>
                    @endif
                    @if(auth()->user()->hasPermission('incident management'))
                    <li>
                        <a href="{{ route('incident-report-management.index') }}" class="menu">
                            <div class="menu__icon"> <i data-lucide="activity"></i> </div>
                            <div class="menu__title"> Incident Management </div>
                        </a>
                    </li>
                    @endif
                    @if(auth()->user()->hasPermission('announcements management'))
                    <li>
                        <a href="{{ route('announcement.index') }}" class="menu">
                            <div class="menu__icon"> <i data-lucide="activity"></i> </div>
                            <div class="menu__title"> Announcements Management </div>
                        </a>
                    </li>
                    @endif
                    
                    @if(auth()->user()->hasPermission('billing management'))
                    <li>
                        <a href="javascript:;" class="menu">
                            <div class="menu__icon"> <i data-lucide="activity"></i> </div>
                            <div class="menu__title"> Billing Management <i data-lucide="chevron-down" class="menu__sub-icon "></i> </div>
                        </a>
                        <ul class="">
                            <li>
                                <a href="{{ route('billing-management.index') }}" class="menu">
                                    <div class="menu__icon"> <i data-lucide="activity"></i> </div>
                                    <div class="menu__title"> Create Billing </div>
                                </a>
                            </li>
                            <li>
                                <a href="{{ route('list-payments.index') }}" class="menu">
                            <div class="menu__icon"> <i data-lucide="activity"></i> </div>
                                    <div class="menu__title"> List of Payments </div>
                                </a>
                            </li>
                        </ul>
                    </li>
                    @endif
                    @if(auth()->user()->hasPermission('payment account management'))
                    <li>
                        <a href="{{ route('bank-account.index') }}" class="menu">
                            <div class="menu__icon"> <i data-lucide="activity"></i> </div>
                            <div class="menu__title"> Payment Account Management </div>
                        </a>
                    </li>
                    @endif
                    @if(auth()->user()->hasPermission('feedback management'))
                    <li>
                        <a href="{{ route('feedback-management.index') }}" class="menu">
                            <div class="menu__icon"> <i data-lucide="activity"></i> </div>
                            <div class="menu__title"> Feedback Management </div>
                        </a>
                    </li>
                    @endif
                    @if(auth()->user()->hasPermission('appointment management'))
                    <li>
                        <a href="{{ route('appointment-management.index') }}" class="menu">
                            <div class="menu__icon"> <i data-lucide="activity"></i> </div>
                            <div class="menu__title"> Appointment Management </div>
                        </a>
                    </li>
                    @endif
                    
                    @if(!$isSecurityPersonnel)
                    <li>
                        <a href="{{ route('chatbot.index') }}" class="menu">
                            <div class="menu__icon"> <i data-lucide="message-circle"></i> </div>
                            <div class="menu__title"> Guest Chatbot </div>
                        </a>
                    </li>
                    @endif
                    @if(!$isServiceManager && !$isSecurityPersonnel && !$isOperationalManager && !$isFinancialManager && !$isAppointmentCoordinator)
                    <li>
                        <a href="{{ route('landlord-management.index') }}" class="menu">
                            <div class="menu__icon"> <i data-lucide="activity"></i> </div>
                            <div class="menu__title"> Tenant & Landlord Management </div>
                        </a>
                    </li>
                    @endif
                    @if(!$isServiceManager && !$isSecurityPersonnel && !$isOperationalManager && !$isFinancialManager && !$isOccupancyManager)
                    <li>
                        <a href="{{ route('calendar.index') }}" class="menu">
                            <div class="menu__icon"> <i data-lucide="activity"></i> </div>
                            <div class="menu__title"> Calendar </div>
                        </a>
                    </li>
                    @endif
                </ul>
            </li>
            @endif
            
            <li class="menu__devider my-6"></li>
            
            @if(auth()->user()->hasPermission('notification settings') || auth()->user()->hasPermission('system settings') || auth()->user()->hasPermission('permission settings'))
            <li>
                <a href="javascript:;" class="menu">
                    <div class="menu__icon"> <i data-lucide="hard-drive"></i> </div>
                    <div class="menu__title"> Settings <i data-lucide="chevron-down" class="menu__sub-icon "></i> </div>
                </a>
                <ul class="">
                    @if(auth()->user()->hasPermission('notification settings'))
                    <li>
                        <a href="{{ route('notification-settings.index') }}" class="menu">
                            <div class="menu__icon"> <i data-lucide="activity"></i> </div>
                            <div class="menu__title"> Notification Settings </div>
                        </a>
                    </li>
                    @endif
                    @if(auth()->user()->hasPermission('system settings'))
                    <li>
                        <a href="{{ route('system-settings.index') }}" class="menu">
                            <div class="menu__icon"> <i data-lucide="activity"></i> </div>
                            <div class="menu__title"> System Settings </div>
                        </a>
                    </li>
                    @endif
                    @if(auth()->user()->hasPermission('permission settings'))
                    <li>
                        <a href="{{ route('permission-settings.index') }}" class="menu">
                            <div class="menu__icon"> <i data-lucide="activity"></i> </div>
                            <div class="menu__title"> Permission Settings </div>
                        </a>
                    </li>
                    @endif
                    @if(auth()->user()->hasPermission('landlord permissions'))
                    <li>
                        <a href="{{ route('landlord-permission.index') }}" class="menu">
                            <div class="menu__icon"> <i data-lucide="activity"></i> </div>
                            <div class="menu__title"> Landlord Permissions </div>
                        </a>
                    </li>
                    @endif
                    @if(auth()->user()->hasPermission('appointment category'))
                    <li>
                        <a href="{{ route('appointment-category.index') }}" class="menu">
                            <div class="menu__icon"> <i data-lucide="activity"></i> </div>
                            <div class="menu__title"> Appointment Category </div>
                        </a>
                    </li>
                    @endif
                    @if(auth()->user()->hasPermission('appointment allow schedule'))
                    <li>
                        <a href="{{ route('appointment-allowing.index') }}" class="menu">
                            <div class="menu__icon"> <i data-lucide="activity"></i> </div>
                            <div class="menu__title"> Appointment Allow Schedule </div>
                        </a>
                    </li>
                    @endif
                </ul>
            </li>
            @endif
            @if(!$isHomeownerRole && !$isServiceManager)
                @if($currentUser->hasPermission('activity logs'))
                <li>
                    <a href="{{ route('activity-logs.index') }}" class="menu">
                        <div class="menu__icon"> <i data-lucide="activity"></i> </div>
                        <div class="menu__title"> Activity Logs </div>
                    </a>
                </li>
                @endif
            @endif
        </ul>
    </div>
</div>
<!-- END: Mobile Menu -->
<!-- END: Mobile Menu -->