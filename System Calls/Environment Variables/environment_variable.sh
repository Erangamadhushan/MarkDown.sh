#!/bin/bash

# Environment Variables Script

echo "===== Environment Variables Report ====="
echo ""

# Display all environment variables
echo "Current environment variables:"
printenv
echo ""
# Display specific environment variables
echo "Specific environment variables:"
echo "PATH: $PATH"
echo "HOME: $HOME"
echo "USER: $USER"
echo "SHELL: $SHELL"
echo "LANG: $LANG"
echo "TERM: $TERM"
echo "PWD: $PWD"
echo "EDITOR: $EDITOR"
echo "HISTSIZE: $HISTSIZE"
echo "HISTFILE: $HISTFILE"
echo "MAIL: $MAIL"
echo "LOGNAME: $LOGNAME"

# Display environment variables related to the system

echo "System environment variables:"
echo "OSTYPE: $OSTYPE"
echo "HOSTNAME: $HOSTNAME"
echo "MACHTYPE: $MACHTYPE"
echo "SHLVL: $SHLVL"
echo "UID: $UID"
echo "EUID: $EUID"
echo "GROUPS: $GROUPS"
