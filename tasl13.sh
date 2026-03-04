#!/bin/bash

# Check arguments
if [ $# -ne 2 ]; then
    echo "Usage: $0 <source_dir> <backup_dir>"
    exit 1
fi

source_dir=$1
backup_dir=$2
timestamp=$(date '+%Y-%m-%d-%H-%M-%S')

# Check if source exists
if [ ! -d "$source_dir" ]; then
    echo "Error: Source directory does not exist."
    exit 1
fi

# Create backup directory if not exists
mkdir -p "$backup_dir"

backup() {
    tar -czf "${backup_dir}/backup_${timestamp}.tar.gz" "$source_dir" >/dev/null

    if [ $? -eq 0 ]; then
        echo "Archive created successfully: backup_${timestamp}.tar.gz"
    else
        echo "Backup failed"
        exit 1
    fi
}

delete_old_backups() {
    echo "Deleting old backups (older than 14 days)..."
    find "$backup_dir" -name "*.tar.gz" -type f -mtime +14 -delete
}

backup
delete_old_backups
