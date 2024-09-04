#!/bin/bash

# Output: 
# [INFO] [2024-08-30 15:00:00] Script started.
# [ERROR] [2024-08-30 15:00:01] Directory does not exist.
# [ERROR] [2024-08-30 15:00:02] Failed to copy file.
# [INFO] [2024-08-30 15:00:03] Script finished.



log_info() {
    local message="$1"
    local timestamp=$(date +"%Y-%m-%d %H:%M:%S")
    echo "[INFO] [$timestamp] $message"
}

log_error() {
    local message="$1"
    local timestamp=$(date +"%Y-%m-%d %H:%M:%S")
    echo "[ERROR] [$timestamp] $message" >&2
}

main() {
    log_info "Script started."

    if [ -d "/some/directory" ]; then
        log_info "Directory exists."
    else
        log_error "Directory does not exist."
    fi
    
    if cp /some/nonexistentfile /some/destination/; then
        log_info "File copied successfully."
    else
        log_error "Failed to copy file."
    fi

    log_info "Script finished."
}

main