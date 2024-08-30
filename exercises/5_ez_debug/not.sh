#!/bin/bash
# shellcheck disable=SC2154,SC1091

# A simple script to create a backup of the /home/user directory

# Define variables
source=$(pwd)  # Error: Typo in variable name "source"
destination="$source/newdir"

# Create the destination directory
mkdir -p $destination

# Copy files from source to destination
cp -r "$soruce" "$destination"  # Error: Variable "soruce" is incorrect, 


VAR=5
if [ "$VAR" -gt 3 ]; then
    echo "The number is greater than 3"
fi