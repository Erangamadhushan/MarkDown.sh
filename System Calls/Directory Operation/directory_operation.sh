#!/bin/bash

echo "Directory operation script"
echo "===================================="

# create directory (mkdir system call)
mkdir -p test_Dir/subdir

#List directory contents (reddir system call)
echo "Directory contents :"

for file in test_Dir/subdir/*; do
    if [ -e "$file" ]; then
        echo "File: $file"
    else
        echo "No files found in the directory."
    fi
done


# Remove directory (rmdir system call)
echo "Removing directory..."
rmdir test_Dir/subdir
if [ $? -eq 0 ]; then
    echo "Directory removed successfully."
else
    echo "Failed to remove directory. It may not be empty."
fi


# Check if the directory still exists
if [ ! -d "test_Dir/subdir" ]; then
    echo "Directory test_Dir/subdir does not exist."
else
    echo "Directory test_Dir/subdir still exists."
fi


