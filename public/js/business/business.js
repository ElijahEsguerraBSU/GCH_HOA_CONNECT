document.addEventListener('DOMContentLoaded', function() {
    // Initialize filter states from URL parameters
    const urlParams = new URLSearchParams(window.location.search);
    const currentSearch = urlParams.get('search') || '';
    const currentStatusFilter = urlParams.get('status') || 'all';
    
    // Initialize search input value from URL
    const searchInput = document.getElementById('searchInput');
    if (searchInput && currentSearch) {
        searchInput.value = currentSearch;
    }
    
    // Update filter button texts from URL parameters
    updateFilterButtonTexts();
    
    // Search functionality - trigger on Enter key or after typing stops
    let searchTimeout;
    if (searchInput) {
        searchInput.addEventListener('keypress', function(e) {
            if (e.key === 'Enter') {
                e.preventDefault();
                performServerSideSearch();
            }
        });
        
        searchInput.addEventListener('input', function() {
            clearTimeout(searchTimeout);
            searchTimeout = setTimeout(() => {
                performServerSideSearch();
            }, 500);
        });
    }

    // Universal filter handler - Server-side filtering
    document.addEventListener('click', function(e) {
        if (e.target.matches('[data-filter-type]')) {
            const filterType = e.target.getAttribute('data-filter-type');
            const filterValue = e.target.getAttribute('data-filter-value');
            
            // Apply server-side filter
            applyServerSideFilter(filterType, filterValue);
        }
    });

    // Reset filters button - Server-side reset
    document.getElementById('resetFiltersBtn')?.addEventListener('click', function() {
        // Redirect to page without any filters
        window.location.href = window.location.pathname;
    });
    
    // Perform server-side search
    function performServerSideSearch() {
        const searchTerm = searchInput ? searchInput.value.trim() : '';
        const urlParams = new URLSearchParams(window.location.search);
        
        if (searchTerm) {
            urlParams.set('search', searchTerm);
        } else {
            urlParams.delete('search');
        }
        
        // Reset to page 1 when searching
        urlParams.delete('page');
        
        // Redirect with new search parameter
        window.location.search = urlParams.toString();
    }
    
    // Apply server-side filter
    function applyServerSideFilter(filterType, filterValue) {
        const urlParams = new URLSearchParams(window.location.search);
        
        if (filterValue === 'all') {
            urlParams.delete(filterType);
        } else {
            urlParams.set(filterType, filterValue);
        }
        
        // Reset to page 1 when filtering
        urlParams.delete('page');
        
        // Redirect with new filter parameters
        window.location.search = urlParams.toString();
    }
    
    // Update filter button texts from URL parameters
    function updateFilterButtonTexts() {
        const urlParams = new URLSearchParams(window.location.search);
        const status = urlParams.get('status') || 'all';
        
        // Update status button
        const statusText = status === 'all' ? 'Status: All' : `Status: ${status.charAt(0).toUpperCase() + status.slice(1)}`;
        updateFilterButton('statusFilterBtn', statusText);
    }

    // Update filter button text
    function updateFilterButton(buttonId, text) {
        const button = document.getElementById(buttonId);
        if (button) {
            // Preserve the icon
            const icon = button.querySelector('svg');
            button.textContent = text;
            if (icon) {
                button.insertBefore(icon, button.firstChild);
            }
        }
    }

    // Handle Add Business Form
    const addForm = document.getElementById('addBusinessForm');
    if (addForm) {
        addForm.addEventListener('submit', async function(e) {
            e.preventDefault();
            
            const formData = new FormData(this);
            
            try {
                const response = await fetch('/business', {
                    method: 'POST',
                    headers: {
                        'X-CSRF-TOKEN': document.querySelector('meta[name="csrf-token"]')?.getAttribute('content') || 
                                       document.querySelector('input[name="_token"]')?.value,
                        'Accept': 'application/json'
                    },
                    body: formData
                });
                
                const data = await response.json();
                
                if (data.success) {
                    showToast(data.message || 'Business added successfully!', 'success');
                    
                    // Close modal
                    const closeBtn = document.querySelector('#add-user-modal [data-tw-dismiss="modal"]');
                    if (closeBtn) closeBtn.click();
                    
                    // Reset form
                    addForm.reset();
                    document.getElementById('createFileInfo').style.display = 'none';
                    
                    // Reload page
                    setTimeout(() => {
                        window.location.reload();
                    }, 1000);
                } else {
                    showToast(data.message || 'Failed to add business', 'error');
                }
            } catch (error) {
                console.error('Error:', error);
                showToast('Error adding business. Please try again.', 'error');
            }
        });
    }

    // Handle View Business
    document.querySelectorAll('[data-tw-target="#view-business-modal"]').forEach(button => {
        button.addEventListener('click', function() {
            const businessId = this.getAttribute('data-request-id');
            loadBusinessDetails(businessId);
        });
    });

    // Handle Edit Business
    document.querySelectorAll('[data-action="edit"]').forEach(button => {
        button.addEventListener('click', function() {
            const businessId = this.getAttribute('data-id');
            loadBusinessForEdit(businessId);
        });
    });

    // Handle Delete Business
    document.querySelectorAll('[data-action="delete"]').forEach(button => {
        button.addEventListener('click', function() {
            const businessId = this.getAttribute('data-id');
            document.getElementById('deleteBusinessId').value = businessId;
        });
    });

    // Confirm delete
    document.getElementById('confirmDeleteBusiness')?.addEventListener('click', async function() {
        const businessId = document.getElementById('deleteBusinessId').value;
        
        try {
            const response = await fetch(`/business/${businessId}`, {
                method: 'DELETE',
                headers: {
                    'X-CSRF-TOKEN': document.querySelector('meta[name="csrf-token"]')?.getAttribute('content'),
                    'Accept': 'application/json'
                }
            });
            
            const data = await response.json();
            
            if (data.success) {
                showToast(data.message || 'Business deleted successfully', 'success');
                
                // Close modal
                const closeBtn = document.querySelector('#delete-business-modal [data-tw-dismiss="modal"]');
                if (closeBtn) closeBtn.click();
                
                // Reload page
                setTimeout(() => {
                    window.location.reload();
                }, 1000);
            } else {
                showToast(data.message || 'Failed to delete business', 'error');
            }
        } catch (error) {
            console.error('Error:', error);
            showToast('Error deleting business', 'error');
        }
    });

    // Handle Edit Form Submission
    const editForm = document.getElementById('editBusinessForm');
    if (editForm) {
        editForm.addEventListener('submit', async function(e) {
            e.preventDefault();
            
            const businessId = document.getElementById('editBusinessId').value;
            const formData = new FormData(this);
            formData.append('_method', 'PUT');
            
            try {
                const response = await fetch(`/business/${businessId}`, {
                    method: 'POST',
                    headers: {
                        'X-CSRF-TOKEN': document.querySelector('meta[name="csrf-token"]')?.getAttribute('content') || 
                                       document.querySelector('input[name="_token"]')?.value,
                        'Accept': 'application/json'
                    },
                    body: formData
                });
                
                const data = await response.json();
                
                if (data.success) {
                    showToast(data.message || 'Business updated successfully!', 'success');
                    
                    // Close modal
                    const closeBtn = document.querySelector('#edit-business-modal [data-tw-dismiss="modal"]');
                    if (closeBtn) closeBtn.click();
                    
                    // Reload page
                    setTimeout(() => {
                        window.location.reload();
                    }, 1000);
                } else {
                    showToast(data.message || 'Failed to update business', 'error');
                }
            } catch (error) {
                console.error('Error:', error);
                showToast('Error updating business. Please try again.', 'error');
            }
        });
    }

    // File input change handlers
    const createFileInput = document.getElementById('createBusinessClearance');
    if (createFileInput) {
        createFileInput.addEventListener('change', function() {
            const files = Array.from(this.files);
            const fileInfo = document.getElementById('createFileInfo');
            
            if (files.length === 0 && fileInfo) {
                fileInfo.style.display = 'none';
                return;
            }
            
            // Enforce maximum of 5 files
            if (files.length > 5) {
                showToast('Maximum 5 files allowed. Only the first 5 files will be uploaded.', 'error');
                // Keep only first 5 files
                const dt = new DataTransfer();
                for (let i = 0; i < 5; i++) {
                    dt.items.add(files[i]);
                }
                this.files = dt.files;
                files.splice(5);
            }
            
            if (fileInfo) {
                if (files.length === 1) {
                    fileInfo.innerHTML = `Selected: ${files[0].name} (${(files[0].size / 1024 / 1024).toFixed(2)} MB)`;
                } else {
                    const totalSize = files.reduce((sum, file) => sum + file.size, 0);
                    const fileNames = files.map(f => f.name).join(', ');
                    fileInfo.innerHTML = `Selected ${files.length} file(s): ${fileNames.substring(0, 50)}${fileNames.length > 50 ? '...' : ''} (Total: ${(totalSize / 1024 / 1024).toFixed(2)} MB)`;
                }
                fileInfo.style.display = 'block';
            }
        });
    }

    const editFileInput = document.getElementById('edit_business_clearance');
    if (editFileInput) {
        editFileInput.addEventListener('change', function() {
            const files = Array.from(this.files);
            const fileInfo = document.getElementById('editFileInfo');
            
            if (files.length === 0 && fileInfo) {
                fileInfo.style.display = 'none';
                return;
            }
            
            // Enforce maximum of 5 files
            if (files.length > 5) {
                showToast('Maximum 5 files allowed. Only the first 5 files will be uploaded.', 'error');
                // Keep only first 5 files
                const dt = new DataTransfer();
                for (let i = 0; i < 5; i++) {
                    dt.items.add(files[i]);
                }
                this.files = dt.files;
                files.splice(5);
            }
            
            if (fileInfo) {
                if (files.length === 1) {
                    fileInfo.innerHTML = `New file: ${files[0].name} (${(files[0].size / 1024 / 1024).toFixed(2)} MB)`;
                } else {
                    const totalSize = files.reduce((sum, file) => sum + file.size, 0);
                    const fileNames = files.map(f => f.name).join(', ');
                    fileInfo.innerHTML = `New ${files.length} file(s): ${fileNames.substring(0, 50)}${fileNames.length > 50 ? '...' : ''} (Total: ${(totalSize / 1024 / 1024).toFixed(2)} MB)`;
                }
                fileInfo.style.display = 'block';
            }
        });
    }

    // Load business details for view modal
    function loadBusinessDetails(businessId) {
        fetch(`/business/${businessId}`)
            .then(response => response.json())
            .then(data => {
                if (data.success) {
                    displayBusinessDetails(data.business);
                } else {
                    showError('Failed to load business details');
                }
            })
            .catch(error => {
                console.error('Error:', error);
                showError('Error loading business details');
            });
    }

    // Display business details in modal
    function displayBusinessDetails(business) {
        const detailsContainer = document.getElementById('business-details');
        
        let clearanceFile = 'No file uploaded';
        if (business.business_clearance) {
            try {
                // Try to parse as JSON array (multiple files)
                const files = JSON.parse(business.business_clearance);
                if (Array.isArray(files) && files.length > 0) {
                    // Always show separate links for each file, even if only 1
                    const linksHtml = files.map((file, index) => {
                        const fileName = file.split('/').pop() || `Document ${index + 1}`;
                        return `<div class="mb-1 w-full overflow-hidden" style="max-width: 100%;"><a href="${window.location.origin}/storage/${file}" target="_blank" class="text-blue-600 hover:text-blue-800 underline block w-full" style="word-wrap: break-word; overflow-wrap: break-word; word-break: break-all; max-width: 100%; display: block;">
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="w-4 h-4 mr-2 inline">
                                    <path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"></path>
                                    <polyline points="14,2 14,8 20,8"></polyline>
                                    <line x1="16" y1="13" x2="8" y2="13"></line>
                                    <line x1="16" y1="17" x2="8" y2="17"></line>
                                    <polyline points="10,9 9,9 8,9"></polyline>
                                </svg>
                                View Document ${index + 1}: ${fileName}
                            </a></div>`;
                    }).join('');
                    clearanceFile = `<div class="space-y-1">${linksHtml}</div>`;
                } else {
                    // Single file (legacy format or failed parse)
                    const fileName = business.business_clearance.split('/').pop() || 'Clearance Document';
                    clearanceFile = `<div class="w-full overflow-hidden" style="max-width: 100%;"><a href="${window.location.origin}/storage/${business.business_clearance}" target="_blank" class="text-blue-600 hover:text-blue-800 underline block w-full" style="word-wrap: break-word; overflow-wrap: break-word; word-break: break-all; max-width: 100%; display: block;">
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="w-4 h-4 mr-2 inline">
                                <path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"></path>
                                <polyline points="14,2 14,8 20,8"></polyline>
                                <line x1="16" y1="13" x2="8" y2="13"></line>
                                <line x1="16" y1="17" x2="8" y2="17"></line>
                                <polyline points="10,9 9,9 8,9"></polyline>
                            </svg>
                            View Document: ${fileName}
                        </a></div>`;
                }
            } catch (e) {
                // Not JSON, treat as single file (legacy format)
                const fileName = business.business_clearance.split('/').pop() || 'Clearance Document';
                clearanceFile = `<div class="w-full overflow-hidden" style="max-width: 100%;"><a href="${window.location.origin}/storage/${business.business_clearance}" target="_blank" class="text-blue-600 hover:text-blue-800 underline block w-full" style="word-wrap: break-word; overflow-wrap: break-word; word-break: break-all; max-width: 100%; display: block;">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="w-4 h-4 mr-2 inline">
                            <path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"></path>
                            <polyline points="14,2 14,8 20,8"></polyline>
                            <line x1="16" y1="13" x2="8" y2="13"></line>
                            <line x1="16" y1="17" x2="8" y2="17"></line>
                            <polyline points="10,9 9,9 8,9"></polyline>
                        </svg>
                        View Document: ${fileName}
                    </a></div>`;
            }
        }
            
        const statusColor = business.status === 'approved' ? 'text-success' : 
                          business.status === 'declined' ? 'text-danger' : 
                          'text-warning';
        
        detailsContainer.innerHTML = `
            <div class="grid grid-cols-12 gap-4">
                <div class="col-span-12 md:col-span-6">
                    <label class="form-label">Business Name</label>
                    <input type="text" class="form-control" value="${business.business_name || 'N/A'}" readonly>
                </div>
                <div class="col-span-12 md:col-span-6">
                    <label class="form-label">Type of Business</label>
                    <input type="text" class="form-control" value="${business.type_of_business || 'N/A'}" readonly>
                </div>
                <div class="col-span-12 md:col-span-6">
                    <label class="form-label">Owner</label>
                    <input type="text" class="form-control" value="${business.user?.name || 'N/A'}" readonly>
                </div>
                <div class="col-span-12 md:col-span-6">
                    <label class="form-label">Address</label>
                    <input type="text" class="form-control" value="${business.address || 'N/A'}" readonly>
                </div>
                <div class="col-span-12" style="max-width: 100%; min-width: 0; overflow: hidden;">
                    <label class="form-label">Business Clearance Documents</label>
                    <div class="form-control bg-slate-50 min-h-[60px] p-3" style="word-wrap: break-word; overflow-wrap: break-word; max-width: 100% !important; width: 100% !important; box-sizing: border-box !important; overflow-x: hidden !important;">${clearanceFile}</div>
                </div>
                <div class="col-span-12 md:col-span-6">
                    <label class="form-label">Status</label>
                    <div class="form-control ${statusColor} font-medium">${business.status ? business.status.charAt(0).toUpperCase() + business.status.slice(1) : 'N/A'}</div>
                </div>
                ${business.reason ? `
                <div class="col-span-12">
                    <label class="form-label">Decline Reason</label>
                    <textarea class="form-control" rows="3" readonly>${business.reason}</textarea>
                </div>
                ` : ''}
            </div>
        `;
    }

    // Load business for edit
    function loadBusinessForEdit(businessId) {
        fetch(`/business/${businessId}`)
            .then(response => response.json())
            .then(data => {
                if (data.success) {
                    const business = data.business;
                    
                    document.getElementById('editBusinessId').value = business.id;
                    document.getElementById('edit_business_name').value = business.business_name || '';
                    document.getElementById('edit_type_of_business').value = business.type_of_business || '';
                    document.getElementById('edit_address').value = business.address || '';
                    
                    // Show current clearance if exists (supporting both single file and multiple files)
                    if (business.business_clearance) {
                        const clearanceDiv = document.getElementById('editCurrentClearance');
                        const clearanceLink = document.getElementById('editCurrentClearanceLink');
                        
                        if (clearanceDiv) {
                            try {
                                // Try to parse as JSON array (multiple files)
                                const files = JSON.parse(business.business_clearance);
                                if (Array.isArray(files) && files.length > 0) {
                                    // Multiple files
                                    if (files.length === 1) {
                                        if (clearanceLink) {
                                            clearanceLink.href = `${window.location.origin}/storage/${files[0]}`;
                                            clearanceLink.textContent = 'View Current Clearance';
                                        }
                                        clearanceDiv.style.display = 'block';
                                    } else {
                                        // Multiple files - create list
                                        const linksHtml = files.map((file, index) => {
                                            const fileName = file.split('/').pop() || `Document ${index + 1}`;
                                            return `<a href="${window.location.origin}/storage/${file}" target="_blank" class="text-blue-600 hover:text-blue-800 underline block mb-1">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="w-4 h-4 inline mr-1">
                                                    <path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"></path>
                                                    <polyline points="14,2 14,8 20,8"></polyline>
                                                    <line x1="16" y1="13" x2="8" y2="13"></line>
                                                    <line x1="16" y1="17" x2="8" y2="17"></line>
                                                    <polyline points="10,9 9,9 8,9"></polyline>
                                                </svg>
                                                View Clearance ${index + 1}: ${fileName.length > 30 ? fileName.substring(0, 30) + '...' : fileName}
                                            </a>`;
                                        }).join('');
                                        clearanceDiv.innerHTML = `
                                            <label class="form-label">Current Clearance (${files.length} file(s)):</label>
                                            <div class="mt-2">${linksHtml}</div>
                                        `;
                                        clearanceDiv.style.display = 'block';
                                    }
                                } else {
                                    // Single file (legacy format or failed parse)
                                    if (clearanceLink) {
                                        clearanceLink.href = `${window.location.origin}/storage/${business.business_clearance}`;
                                        clearanceLink.textContent = 'View Current Clearance';
                                    }
                                    clearanceDiv.style.display = 'block';
                                }
                            } catch (e) {
                                // Not JSON, treat as single file (legacy format)
                                if (clearanceLink) {
                                    clearanceLink.href = `${window.location.origin}/storage/${business.business_clearance}`;
                                    clearanceLink.textContent = 'View Current Clearance';
                                }
                                clearanceDiv.style.display = 'block';
                            }
                        }
                    }
                } else {
                    showToast('Error loading business details', 'error');
                }
            })
            .catch(error => {
                console.error('Error:', error);
                showToast('Error loading business details', 'error');
            });
    }

    // Show error message
    function showError(message) {
        const detailsContainer = document.getElementById('business-details');
        detailsContainer.innerHTML = `
            <div class="text-center text-slate-500 py-12">
                <svg xmlns="http://www.w3.org/2000/svg" width="48" height="48" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1" class="mx-auto mb-3 text-red-300">
                    <circle cx="12" cy="12" r="10"></circle>
                    <line x1="15" y1="9" x2="9" y2="15"></line>
                    <line x1="9" y1="9" x2="15" y2="15"></line>
                </svg>
                <p class="text-lg text-red-600">${message}</p>
                <button type="button" data-tw-dismiss="modal" class="mt-4 btn btn-outline-secondary">Close</button>
            </div>
        `;
    }

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
});

