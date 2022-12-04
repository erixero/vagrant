#!/bin/bash
# Add swap file
sudo fallocate -l 4G /swapfile
# Correct permisions
sudo chmod 600 /swapfile
# Setup the swapfile
sudo mkswap /swapfile
# Enable the swap file
sudo swapon /swapfile
# Append entry in fstab file
echo -e "/swapfile swap swap defaults 0 0" >> /etc/fstab
