#!/bin/bash
# Set static IP for Kali Linux - 192.168.56.101
# Run this inside Kali terminal

echo "Setting static IP for Kali..."

sudo tee /etc/network/interfaces > /dev/null <<EOF
auto eth1
iface eth1 inet static
address 192.168.56.101
netmask 255.255.255.0
gateway 192.168.56.1
EOF

echo "IP set to 192.168.56.101"
echo "Reboot Kali now: sudo reboot"
