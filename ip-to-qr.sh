#!/bin/bash

# Get the IP address
ip_address=$(hostname -i)

# Generate QR code from the IP address
echo "$ip_address" | qrcode-terminal
