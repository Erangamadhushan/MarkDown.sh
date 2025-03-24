#!/bin/bash

echo "System Administration Menu"
echo "1. Check disk usage"
echo "2. Check memory usage"
echo "3. Check CPU info"
echo "4. Exit"
echo -n "Enter your choice: "
read choice

case $choice in
  1)
    df -h
    ;;
  2)
    free -m
    ;;
  3)
    cat /proc/cpuinfo
    ;;
  4)
    echo "Exiting..."
    exit 0
    ;;
  *)
    echo "Invalid option"
    ;;
esac
