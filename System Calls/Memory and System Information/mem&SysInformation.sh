#!/bin/bash

" Memory and System Information Script"
echo "===================================="

# Check memory usage
echo "Memory usage:"
free -h

# Check system uptime
echo "System uptime:"
uptime -p

# Check disk usage
echo "Disk Usage :"
df -h

# Check CPU information
echo "CPU Information :"

if command -v lscpu &> /dev/null; then
    lscpu
else
    echo "lscpu command not found. Using alternative method."
    cat /proc/cpuinfo | grep -E 'model name|cpu cores'
fi

# Check system information
echo "System Information :"

top -b -n 1 | head -n 10
echo "System Information (dmesg):"
dmesg | head -n 10

# Check system load average
echo "System Load Average:"
uptime | awk -F'load average:' '{ print $2 }' | sed 's/,//g'

# Check system hostname
echo "System Hostname:"
hostname

# Check system architecture
echo "System Architecture:"
uname -m

# Check system kernel version
echo "System Kernel Version:"
uname -r
