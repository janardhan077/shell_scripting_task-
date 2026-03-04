#!/bin/bash

LOG_FILE="/var/log/maintenance.log"

log() {
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $1" >> "$LOG_FILE"
}

rotate_logs() {
    log "Starting log rotation..."

    find /var/log -name "*.log" -type f -size +5M -exec truncate -s 0 {} \;

    log "Log rotation completed."
}

backup() {
    SOURCE="/home/jana/devops"
    DEST="/home/jana/backups"
    TIMESTAMP=$(date '+%Y-%m-%d-%H-%M-%S')

    mkdir -p "$DEST"

    tar -czf "$DEST/backup_$TIMESTAMP.tar.gz" "$SOURCE" >/dev/null 2>&1

    if [ $? -eq 0 ]; then
        log "Backup created: backup_$TIMESTAMP.tar.gz"
    else
        log "Backup failed!"
    fi
}

log "Maintenance started"

rotate_logs
backup

log "Maintenance finished"
