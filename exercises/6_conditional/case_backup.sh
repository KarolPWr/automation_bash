#!/bin/bash

# Archiving vs compression
# https://unix.stackexchange.com/a/722969/578393

# Przygotowanie środowiska
mkdir -p /tmp/projects
CONTENT=$(head /dev/urandom | tr -dc A-Za-z0-9 | head -c 256)
echo "$CONTENT" > /tmp/projects/test.txt

# argumenty do zmiennych
BACKUP_DIR="/tmp/projects"
DEST_DIR="/tmp/backups"

mkdir -p "$DEST_DIR"

if [ ! -d "$DEST_DIR" ]; then
    echo "Error: Destination directory does not exist."
    exit 1
fi

echo "Choose a compression method:"
echo "1) tar"
echo "2) gzip"
echo "3) xz"
read -rp "Enter your choice (1/2/3): " choice

# Za pomocą case stwórz backup 
case $choice in
    1)
        echo "Creating tar backup..."
        tar -cf "$DEST_DIR/projects.tar" -C "$BACKUP_DIR" .
        echo "Backup completed: $DEST_DIR/projects.tar"
        ;;
    2)
        echo "Creating gzip backup..."
        tar -czvf "$DEST_DIR/projects.tar.gz" -C "$BACKUP_DIR" .
        echo "Backup completed: $DEST_DIR/projects.tar.gz"
        ;;
    3)
        echo "Creating xz backup..."
        tar -cJvf "$DEST_DIR/projects.tar.xz" -C "$BACKUP_DIR" .
        echo "Backup completed: $DEST_DIR/projects.tar.xz"
        ;;
    *)
        echo "Invalid choice. Please run the script again and select 1, 2, or 3."
        exit 1
        ;;
esac