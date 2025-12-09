document.addEventListener('DOMContentLoaded', function() {
    const submitButton = document.getElementById('otp-submit');
    const otpInput = document.getElementById('otp-input');
    
    // Display the email from session storage
    const resetEmail = sessionStorage.getItem('reset_email');
    if (resetEmail) {
        const emailDisplay = document.querySelector('.intro-x.mt-2.text-slate-400');
        if (emailDisplay) {
            emailDisplay.textContent = `Enter the OTP sent to ${resetEmail}`;
        }
    }
    
    if (submitButton && otpInput) {
        // Auto-focus on OTP input
        otpInput.focus();
        
        // Only allow numeric input and limit to 6 digits
        otpInput.addEventListener('input', function(e) {
            let value = e.target.value.replace(/\D/g, ''); // Remove non-digits
            if (value.length > 6) {
                value = value.substring(0, 6);
            }
            e.target.value = value;
        });
        
        // Submit on Enter key
        otpInput.addEventListener('keypress', function(e) {
            if (e.key === 'Enter') {
                submitButton.click();
            }
        });
        
        submitButton.addEventListener('click', function(e) {
            e.preventDefault();
            
            const otp = otpInput.value.trim();
            
            // Validate OTP
            if (!otp) {
                showToast('Please enter the OTP', 'warning');
                return;
            }
            
            if (otp.length !== 6) {
                showToast('Please enter a 6-digit OTP', 'error');
                return;
            }
            
            // Disable button and show loading
            submitButton.disabled = true;
            submitButton.innerHTML = 'Verifying...';
            
            // Send AJAX request
            fetch('/otp', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                    'X-CSRF-TOKEN': document.querySelector('meta[name="csrf-token"]').getAttribute('content')
                },
                body: JSON.stringify({
                    otp: otp
                })
            })
            .then(response => response.json())
            .then(data => {
                if (data.success) {
                    if (data.show_toast) {
                        showToast(data.message, data.toast_type || 'success');
                    }
                    // Clear the stored email
                    sessionStorage.removeItem('reset_email');
                    // Redirect after a short delay
                    setTimeout(() => {
                        window.location.href = data.redirect || '/login';
                    }, 1500);
                } else {
                    if (data.show_toast) {
                        showToast(data.message || 'Invalid OTP', data.toast_type || 'error');
                    }
                    // Clear the input for retry
                    otpInput.value = '';
                    otpInput.focus();
                }
            })
            .catch(error => {
                console.error('Error:', error);
                showToast('Something went wrong. Please try again.', 'error');
                otpInput.value = '';
                otpInput.focus();
            })
            .finally(() => {
                // Re-enable button
                submitButton.disabled = false;
                submitButton.innerHTML = 'Verify OTP';
            });
        });
    }
});

// Toast notification function (standardized to match feedback.js pattern)
function showToast(message, type = 'success') {
    const backgroundColor = type === 'success' ? '#10b981' : '#ef4444';
    
    // Calculate position to be below the bell and profile picture, aligned to the right
    const profilePicture = document.querySelector('.intro-x.dropdown.w-8.h-8 .dropdown-toggle');
    const bellIcon = document.querySelector('#notification-bell, .notification.dropdown-toggle');
    let yOffset = 80;
    let xOffset = -20;
    
    if (profilePicture) {
        const profileRect = profilePicture.getBoundingClientRect();
        yOffset = profileRect.bottom + window.scrollY + 10;
        xOffset = -(window.innerWidth - profileRect.right) - 20;
    } else if (bellIcon) {
        const bellRect = bellIcon.getBoundingClientRect();
        yOffset = bellRect.bottom + window.scrollY + 10;
        xOffset = -(window.innerWidth - bellRect.right) - 20;
    } else {
        const topbar = document.querySelector('.top-bar-boxed');
        if (topbar) {
            const topbarRect = topbar.getBoundingClientRect();
            yOffset = topbarRect.bottom + window.scrollY + 10;
        }
    }
    
    const toast = Toastify({
        text: message,
        duration: 3000,
        gravity: "top",
        position: "right",
        className: "toastify-content notification-popup",
        backgroundColor: backgroundColor,
        stopOnFocus: true,
        close: true,
        escapeMarkup: false,
        offset: { x: xOffset, y: yOffset },
        style: { zIndex: '99999' },
        onClick: function() {
            this.hideToast();
        }
    });
    
    toast.showToast();
    
    setTimeout(() => {
        const toastElement = document.querySelector('.toastify.on:last-of-type');
        if (toastElement) {
            toastElement.style.zIndex = '99999';
            toastElement.style.position = 'fixed';
            // Force right positioning - convert negative xOffset to positive right value
            const rightValue = xOffset < 0 ? Math.abs(xOffset) : 20;
            toastElement.style.right = rightValue + 'px';
            toastElement.style.left = 'auto';
            // Ensure top position uses our calculated offset
            toastElement.style.top = yOffset + 'px';
            // Remove any conflicting classes that might position it on the left
            toastElement.classList.remove('toastify-left');
            toastElement.classList.add('toastify-right');
            // Force remove any inline left styles
            if (toastElement.style.left && toastElement.style.left !== 'auto') {
                toastElement.style.left = 'auto';
            }
        }
    }, 50);
}
