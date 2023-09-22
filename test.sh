#!/bin/bash

# Test installed packages

# Test curl
if command -v curl &>/dev/null; then
    echo "curl is installed"
else
    echo "curl is not installed"
fi

# Test unzip
if command -v unzip &>/dev/null; then
    echo "unzip is installed"
else
    echo "unzip is not installed"
fi

# Test Java
if command -v java &>/dev/null; then
    echo "Java is installed"
else
    echo "Java is not installed"
fi

# Test Maven
if command -v mvn &>/dev/null; then
    echo "Maven is installed"
else
    echo "Maven is not installed"
fi

# Test Node.js
if command -v node &>/dev/null; then
    echo "Node.js is installed"
else
    echo "Node.js is not installed"
fi

# Test Android SDK
if [ -d "/opt/android-sdk" ]; then
    echo "Android SDK is installed"
else
    echo "Android SDK is not installed"
fi

# Test Docker
if command -v docker &>/dev/null; then
    echo "Docker is installed"
else
    echo "Docker is not installed"
fi

# Test OpenSSH Server
if systemctl is-active --quiet sshd; then
    echo "OpenSSH Server is running"
else
    echo "OpenSSH Server is not running"
fi

# Test scrcpy
if command -v scrcpy &>/dev/null; then
    echo "scrcpy is installed"
    # You can optionally add a test to run scrcpy here if desired.
else
    echo "scrcpy is not installed"
fi

# Test adb
if command -v adb &>/dev/null; then
    echo "adb is installed"
    # You can optionally add a test to run adb here if desired.
else
    echo "adb is not installed"
fi