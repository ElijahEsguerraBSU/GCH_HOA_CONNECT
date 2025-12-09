document.addEventListener('DOMContentLoaded', function() {
    const submitButton = document.getElementById('new-password-submit');
    const passwordInput = document.getElementById('new-password-input');
    const confirmPasswordInput = document.getElementById('confirm-password-input');
    
    if (submitButton && passwordInput && confirmPasswordInput) {
        // Auto-focus on password input
        passwordInput.focus();
        
        // Submit on Enter key in password field
        passwordInput.addEventListener('keypress', function(e) {
            if (e.key === 'Enter') {
                confirmPasswordInput.focus();
            }
        });
        
        // Submit on Enter key in confirm password field
        confirmPasswordInput.addEventListener('keypress', function(e) {
            if (e.key === 'Enter') {
                submitButton.click();
            }
        });
        
        submitButton.addEventListener('click', function(e) {
            e.preventDefault();
            
            const password = passwordInput.value.trim();
            const confirmPassword = confirmPasswordInput.value.trim();
            
            // Validate password
            if (!password) {
                showToast('Please enter your new password', 'warning');
                passwordInput.focus();
                return;
            }
            
            if (password.length < 8) {
                showToast('Password must be at least 8 characters long', 'error');
                passwordInput.focus();
                return;
            }
            
            // Validate confirm password
            if (!confirmPassword) {
                showToast('Please confirm your new password', 'warning');
                confirmPasswordInput.focus();
                return;
            }
            
            if (password !== confirmPassword) {
                showToast('Passwords do not match', 'error');
                confirmPasswordInput.focus();
                return;
            }
            
            // Disable button and show loading
            submitButton.disabled = true;
            submitButton.innerHTML = 'Resetting...';
            
            // Send AJAX request
            fetch('/new-password', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                    'X-CSRF-TOKEN': document.querySelector('meta[name="csrf-token"]').getAttribute('content')
                },
                body: JSON.stringify({
                    password: password,
                    password_confirmation: confirmPassword
                })
            })
            .then(response => response.json())
            .then(data => {
                if (data.success) {
                    if (data.show_toast) {
                        showToast(data.message, data.toast_type || 'success');
                    }
                    // Redirect after a short delay
                    setTimeout(() => {
                        window.location.href = data.redirect || '/login';
                    }, 1500);
                } else {
                    if (data.show_toast) {
                        showToast(data.message || 'Failed to reset password', data.toast_type || 'error');
                    }
                    // Clear the inputs for retry
                    passwordInput.value = '';
                    confirmPasswordInput.value = '';
                    passwordInput.focus();
                }
            })
            .catch(error => {
                console.error('Error:', error);
                showToast('Something went wrong. Please try again.', 'error');
                passwordInput.value = '';
                confirmPasswordInput.value = '';
                passwordInput.focus();
            })
            .finally(() => {
                // Re-enable button
                submitButton.disabled = false;
                submitButton.innerHTML = 'Reset Password';
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
