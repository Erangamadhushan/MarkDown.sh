#!/bin/bash

echo "Proces identification script"
echo "===================================="
echo "This script will identify the current process and its details."

# Fork and execute a background process
echo "Starting a background process... !";
(
    echo "Child process PID: $$"
    sleep 3
    echo "Child process completed."
) & 
CHILD_PID=$!
echo "Parent process PID: $$"
echo "Started child with PID: $CHILD_PID"

# Wait for child process (wait system call)
wait $CHILD_PID
echo "Child process with PID $CHILD_PID has completed."