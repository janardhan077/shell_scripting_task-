#!/bin/bash
# Script Name : system_file_manager.sh
# Purpose     : File, directory, disk and permission management
# Author      : Janardhan

set -e

LOG="system_file_manager.log"

log_msg() {
    echo "$(date '+%Y-%m-%d %H:%M:%S') : $1" >> "$LOG"
}

check_or_create_file() {
    read -p "Enter filename: " file
    if [ -f "$file" ]; then
        echo "File exists"
        log_msg "File $file already exists"
    else
        touch "$file"
        echo "File created"
        log_msg "File $file created"
    fi
}

count_files_dirs() {
    read -p "Enter directory: " dir
    if [ ! -d "$dir" ]; then
        echo "Directory not found"
        return
    fi

    files=$(find "$dir" -type f | wc -l)
    dirs=$(find "$dir" -type d | wc -l)

    echo "Files      : $files"
    echo "Directories: $dirs"
}

check_disk_usage() {
    usage=$(df / | tail -1 | awk '{print $5}' | tr -d '%')
    if [ "$usage" -gt 80 ]; then
        echo "WARNING: Disk usage is $usage%"
        log_msg "Disk usage warning: $usage%"
    else
        echo "Disk usage OK: $usage%"
    fi
}

check_permissions() {
    read -p "Enter filename: " file
    if [ ! -e "$file" ]; then
        echo "File not found"
        return
    fi

    [ -r "$file" ] && echo "Readable" || echo "Not readable"
    [ -w "$file" ] && echo "Writable" || echo "Not writable"
    [ -x "$file" ] && echo "Executable" || echo "Not executable"
}

rename_txt_to_log() {
    read -p "Enter directory: " dir
    if [ ! -d "$dir" ]; then
        echo "Directory not found"
        return
    fi

    for file in "$dir"/*.txt; do
        [ -e "$file" ] || continue
        mv "$file" "${file%.txt}.log"
    done

    echo "Renaming completed"
    log_msg "Renamed .txt files to .log in $dir"
}

menu() {
    echo "----------------------------"
    echo " SYSTEM FILE MANAGER "
    echo "----------------------------"
    echo "1. Check/Create File"
    echo "2. Count Files & Directories"
    echo "3. Check Disk Usage"
    echo "4. Check File Permissions"
    echo "5. Rename .txt to .log"
    echo "6. Exit"
    echo "----------------------------"
}

while true; do
    menu
    read -p "Choose an option: " choice

    case $choice in
        1) check_or_create_file ;;
        2) count_files_dirs ;;
        3) check_disk_usage ;;
        4) check_permissions ;;
        5) rename_txt_to_log ;;
        6) echo "Exiting..."; exit 0 ;;
        *) echo "Invalid choice" ;;
    esac
done

