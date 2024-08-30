#!/bin/bash

# Define variables
source_dir="/home/user/projects"
backup_dir="/backups/projects"
current_date=$(date +%Y-%m-%d)
backup_destination="$backup_dir/projects_backup_$current_date"

# Check if the backup directory exists
if [ ! -d "$backup_dir" ]; then
    echo "Backup directory does not exist. Creating it now."
    mkdir -p "$backup_dir"
fi

# Perform the backup
echo "Backing up files from $source_dir to $backup_destination"
cp -r "$source_dir" "$backup_destination"

# Check if the backup was successful
if [ $? -eq 0 ]; then
    echo "Backup completed successfully."
else
    echo "Backup failed. Please check the error log."
    exit 1
fi

# Find and delete old backups older than 7 days
old_backups=$(find "$backup_dir" -maxdepth 1 -type d -name "projects_backup_*" -mtime +7)

if [ -z "$old_backups" ]; then
    echo "No old backups found."
else
    echo "Found old backups. Deleting them now..."
    find "$backup_dir" -maxdepth 1 -type d -name "projects_backup_*" -mtime +7 -exec rm -rf {} \;
    echo "Deleted old backups."
fi