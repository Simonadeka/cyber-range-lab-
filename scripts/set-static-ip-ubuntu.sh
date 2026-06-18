#!/bin/bash
# Set static IP for Ubuntu Server 22.04 - 192.168.56.103
# Run this inside Ubuntu terminal

echo "Setting static IP for Ubuntu..."

sudo tee /etc/netplan/00-installer-config.yaml > /dev/null <<EOF
network:
  version: 2
  renderer: networkd
  ethernets:
    enp0s8:
      dhcp4: no
      addresses:
        - 192.168.56.103/24
EOF

sudo netplan apply
echo "IP set to 192.168.56.103"
