import SimpleBar from "simplebar";

(function () {
    "use strict";

    // ============================================
    // PROFILE PHOTO UPLOAD ERROR SUPPRESSION
    // Suppress error popups during profile photo uploads on mobile
    // ============================================
    
    // Override the profile error notification function to suppress errors during upload
    (function() {
        let originalShowNotification = window.showNotification_profile_toast_error;
        
        // Function to create the wrapper
        function createWrapper() {
            const currentOriginal = window.showNotification_profile_toast_error;
            if (currentOriginal && currentOriginal !== window.__profileNotificationWrapper) {
                originalShowNotification = currentOriginal;
            }
            
            // Create wrapper function that checks suppression flags
            const wrapper = function() {
                // Suppress error notifications during profile photo upload
                if (window.__suppressProfileUploadErrors) {
                    console.warn('Suppressed profile error notification (upload in progress)');
                    return;
                }
                
                // Also suppress if success was shown recently
                const toastState = window.__profileToastState || { lastType: null, lastAt: 0 };
                const now = Date.now();
                const timeSinceLastToast = now - toastState.lastAt;
                
                if (toastState.lastType === 'success' && timeSinceLastToast < 10000) {
                    console.warn('Suppressed profile error notification after successful upload');
                    return;
                }
                
                // Call original function if it exists and not suppressed
                const original = originalShowNotification || currentOriginal;
                if (original && original !== wrapper) {
                    return original.apply(this, arguments);
                }
            };
            
            // Mark as wrapper to avoid infinite loops
            window.__profileNotificationWrapper = wrapper;
            window.showNotification_profile_toast_error = wrapper;
        }
        
        // Create initial wrapper
        createWrapper();
        
        // Re-override after DOMContentLoaded (when notification component initializes)
        if (document.readyState === 'loading') {
            document.addEventListener('DOMContentLoaded', function() {
                // Check periodically for the first few seconds to catch late initialization
                let attempts = 0;
                const maxAttempts = 20; // Check for 2 seconds (20 * 100ms)
                const checkInterval = setInterval(function() {
                    attempts++;
                    if (window.showNotification_profile_toast_error && 
                        window.showNotification_profile_toast_error !== window.__profileNotificationWrapper) {
                        createWrapper();
                    }
                    if (attempts >= maxAttempts) {
                        clearInterval(checkInterval);
                    }
                }, 100);
            });
        } else {
            // DOM already loaded, check immediately
            createWrapper();
        }
    })();
    
    // Global error suppression for profile photo uploads on mobile
    window.addEventListener('unhandledrejection', function(event) {
        // Suppress unhandled promise rejections during profile photo upload
        if (window.__suppressProfileUploadErrors) {
            console.warn('Suppressed unhandled promise rejection during profile upload:', event.reason);
            event.preventDefault(); // Prevent default error handling
            return;
        }
        
        // Also suppress if success toast was shown recently
        const toastState = window.__profileToastState || { lastType: null, lastAt: 0 };
        const now = Date.now();
        const timeSinceLastToast = now - toastState.lastAt;
        
        if (toastState.lastType === 'success' && timeSinceLastToast < 10000) {
            console.warn('Suppressed unhandled promise rejection after successful upload');
            event.preventDefault();
            return;
        }
    });

    // Scrollbar
    if ($(".mobile-menu .scrollable").length) {
        new SimpleBar($(".mobile-menu .scrollable")[0]);
    }

    // Mobile Menu
    $(".mobile-menu-toggler").on("click", function () {
        if ($(".mobile-menu").hasClass("mobile-menu--active")) {
            $(".mobile-menu").removeClass("mobile-menu--active");
        } else {
            $(".mobile-menu").addClass("mobile-menu--active");
        }
    });

    $(".mobile-menu")
        .find(".menu")
        .on("click", function () {
            if ($(this).parent().find("ul").length) {
                if (
                    $(this).parent().find("ul").first()[0].offsetParent !== null
                ) {
                    $(this)
                        .find(".menu__sub-icon")
                        .removeClass("transform rotate-180");
                    $(this)
                        .parent()
                        .find("ul")
                        .first()
                        .slideUp(300, function () {
                            $(this).removeClass("menu__sub-open");
                        });
                } else {
                    $(this)
                        .find(".menu__sub-icon")
                        .addClass("transform rotate-180");
                    $(this)
                        .parent()
                        .find("ul")
                        .first()
                        .slideDown(300, function () {
                            $(this).addClass("menu__sub-open");
                        });
                }
            }
        });
})();
