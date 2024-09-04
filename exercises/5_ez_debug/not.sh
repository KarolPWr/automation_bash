#!/bin/bash

# A simple script to create a backup of the /home/user directory

# Define variables
source=$(pwd)  # Error: Typo in variable name "source"
destination="$source/newdir"

# Create the destination directory
mkdir -p $destination

# Copy files from source to destination
cp -r "$source" "$destination"   


