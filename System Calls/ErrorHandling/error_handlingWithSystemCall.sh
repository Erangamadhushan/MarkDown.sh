#!/bin/bash

# Error Handling with System Calls Script
echo "Error Handling with System Calls Script"
echo "===========================================================";

# Function to handle errors
safe_execute() {
    local file=$1

    #Try to read the existing file
    if cat "$file" 2>/dev/null; then
        echo "File '$file' read successfully."
    else
        echo "Error: Could not read file '$file'. It may not exist or you may not have permission."
        return 1
    fi
    # Try to write to the file
    if echo "New content" >> "$file" 2>/dev/null; then
        echo "File '$file' written successfully."
    else
        echo "Error: Could not write to file '$file'. It may be read-only or you may not have permission."
        return 1
    fi
    # Try to remove the file
    if rm "$file" 2>/dev/null; then
        echo "File '$file' removed successfully."
    else
        echo "Error: Could not remove file '$file'. It may not exist or you may not have permission."
        return 1
    fi
    return 0

    echo "Successfully executed all operations on '$file'."
    echo "All operations completed successfully."
}