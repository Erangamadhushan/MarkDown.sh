#!/bin/bash

# Network Connectivity and Available Networks Script
# This script checks network connectivity and lists available networks

# Text colors for better readability
GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[0;33m'
NC='\033[0m' # No Color

echo "===== Network Connectivity and Available Networks Report ====="
echo ""

# Check if internet is accessible
echo "Testing internet connectivity..."
if ping -c 3 8.8.8.8 &> /dev/null; then
    echo -e "${GREEN}✓ Internet connection is UP${NC}"
    echo "Ping results to Google DNS (8.8.8.8):"
    ping -c 3 8.8.8.8
else
    echo -e "${RED}✗ Internet connection is DOWN${NC}"
fi

echo ""

# Check DNS resolution
echo "Testing DNS resolution..."
if ping -c 1 google.com &> /dev/null; then
    echo -e "${GREEN}✓ DNS resolution is working${NC}"
else
    echo -e "${RED}✗ DNS resolution failed${NC}"
fi

echo ""

# Get current network interface
echo "Current network interface details:"
if command -v ip &> /dev/null; then
    # For Linux systems
    ip addr | grep -E "^[0-9]+:|inet " | grep -v "inet 127" | grep -v "inet6 ::1" | grep -v "inet6 fe80"
elif command -v ifconfig &> /dev/null; then
    # For macOS or other Unix-like systems
    ifconfig | grep -E "^[a-zA-Z0-9]+:|inet " | grep -v "inet 127" | grep -v "inet6 ::1" | grep -v "inet6 fe80"
else
    echo -e "${RED}Neither ip nor ifconfig commands available${NC}"
fi

echo ""

# Check for WiFi networks (for systems with iwlist)
echo "Available WiFi networks:"
if command -v iwlist &> /dev/null; then
    # For Linux systems with iwlist
    echo -e "${YELLOW}Scanning for WiFi networks...${NC}"
    sudo iwlist wlan0 scan 2>/dev/null | grep -E "ESSID|Quality|Encryption"
elif command -v nmcli &> /dev/null; then
    # For systems with NetworkManager
    echo -e "${YELLOW}Scanning for WiFi networks...${NC}"
    nmcli dev wifi list
elif command -v airport &> /dev/null || [ -f "/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport" ]; then
    # For macOS
    echo -e "${YELLOW}Scanning for WiFi networks...${NC}"
    /System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -s
else
    echo -e "${RED}No WiFi scanning tools available${NC}"
fi

echo ""

# Network statistics
echo "Network statistics:"
if command -v netstat &> /dev/null; then
    echo "Active connections:"
    netstat -tuln | grep LISTEN
elif command -v ss &> /dev/null; then
    echo "Active connections:"
    ss -tuln | grep LISTEN
else
    echo -e "${RED}Neither netstat nor ss commands available${NC}"
fi

echo ""
echo "===== End of Network Report ====="