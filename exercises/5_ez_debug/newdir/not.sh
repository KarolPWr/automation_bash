#!/bin/bash

# A simple script to create a backup of the /home/user directory

# Define variables
soruce="."  # Error: Typo in variable name "source"
destination="./newdir"

# Create the destination directory
mkdir -p $destination

# Copy files from source to destination
cp -r $soruce $destination  # Error: Variable "soruce" is incorrect, s