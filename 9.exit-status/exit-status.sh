#!/bin/bash

# Exit status of a command is a number that indicates the success or failure of the command
# 0 indicates success, while any non-zero value indicates failure

# Example of checking exit status of a command
ls /nonexistent_directory
if [ $? -ne 0 ]; then
    echo "The command failed with exit status $?"
fi

# Example of using exit status in a script
echo "This is a test script"
if [ $? -eq 0 ]; then
    echo "The previous command was successful"
else
    echo "The previous command failed with exit status $?"
fi  

# Example of using exit status in real world scenarios

# Scenario-1: Checking if a file exists before trying to read it
filename="testfile.txt"
if [ -f "$filename" ]; then
    echo "File $filename exists. Reading the file..."
    cat "$filename"
else
    echo "File $filename does not exist. Exiting with exit status 1."
    exit 1
fi

# Scenario-2: Checking if a command was successful before proceeding
echo "Creating a directory named 'testdir'"
mkdir testdir
if [ $? -eq 0 ]; then
    echo "Directory 'testdir' created successfully."
else
    echo "Failed to create directory 'testdir'. Exiting with exit status 1."
    exit 1
fi

