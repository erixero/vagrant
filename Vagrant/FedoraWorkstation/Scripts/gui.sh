#!/bin/bash

# Install GUI
dnf install -y @cinnamon-desktop-environment switchdesk switchdesk-gui

# Switch GUI
switchdesk cinnamon

# Change the default boot
systemctl set-default graphical.target

# Reboot
reboot