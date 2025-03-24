#!/bin/bash


#System information with system calls

echo "Hostname : $(hostname)";
echo "OS : $(uname -s)"
echo "Kernel : $(uname -r)"
echo "Architecture : $(uname -m"=)"

# echo "Disk Space : $(df -h/ | tail -1 | awk '{print $4}')"
# echo "Available memory : $(free -h | grep Mem | awk '{print $7}')";
