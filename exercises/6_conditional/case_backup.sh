#!/bin/bash



# Check for correct number of arguments
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 [backup_directory] [destination_directory]"
    echo "Example: $0 /path/to/backup /path/to/destination"
fi

# Assign arguments to variables
BACKUP_DIR=$1
DEST_DIR=$2

# Check if the backup directory exists
if [ ! -d "$BACKUP_DIR" ]; then
    echo "Error: Backup directory does not exist."
    exit 1
fi

# Prompt user for compression choice
echo "Choose a compression method:"
echo "1) tar"
echo "2) gzip"
echo "3) xz"
read -rp "Enter your choice (1/2/3): " choice

# Perform backup based on user choice
case $choice in
    1)
        echo "Creating tar backup..."
        tar -cvf "$DEST_DIR/backup.tar" -C "$BACKUP_DIR" .
        echo "Backup completed: $DEST_DIR/backup.tar"
        ;;
    2)
        echo "Creating gzip backup..."
        tar -czvf "$DEST_DIR/backup.tar.gz" -C "$BACKUP_DIR" .
        echo "Backup completed: $DEST_DIR/backup.tar.gz"
        ;;
    3)
        echo "Creating xz backup..."
        tar -cJvf "$DEST_DIR/backup.tar.xz" -C "$BACKUP_DIR" .
        echo "Backup completed: $DEST_DIR/backup.tar.xz"
        ;;
    *)
        echo "Invalid choice. Please run the script again and select 1, 2, or 3."
        exit 1
        ;;
esac