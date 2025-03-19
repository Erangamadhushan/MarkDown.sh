#!/bin/bash

# This is sample comment line

echo "User Name : $USER" > my.info
echo "System Language : $LANG" >> my.info
echo "Default shell : $BASH" >> my.info
echo "Working Directory : $PWD"
time=$(date +"%I:%M:%S")
echo "Current Time : $time"
echo "Current Time : $(date +%T)"
echo -n "Working Directory : " ;pwd
echo -n "Current Time : ";date "+%T"



