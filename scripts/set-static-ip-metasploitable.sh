#!/bin/bash
# Set static IP for Metasploitable 2 - 192.168.56.102
# Run this inside Metasploitable terminal

echo "Setting static IP for Metasploitable..."

sudo tee /etc/network/interfaces > /dev/null <<EOF
auto eth1
iface eth1 inet static
address 192.168.56.102
netmask 255.255.255.0
gateway 192.168.56.1
EOF

sudo /etc/init.d/networking restart
echo "IP set to 192.168.56.102"
