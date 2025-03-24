#!/bin/bash

# Create new directory and enter it
echo "Enter directory name to create:"
read dirname
mkdir $dirname
cd $dirname
echo "Created and entered directory: $dirname"
pwd
