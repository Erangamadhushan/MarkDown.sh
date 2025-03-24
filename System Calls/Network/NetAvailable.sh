#!/bin/bash

# Check if a host is reachable

if ping -c 1 -W 1 google.com>/dev/null;
then
	echo "Internet connection is availabel"
else 
	echo "No Internet connection "
fi
