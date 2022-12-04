#!/bin/bash

# set hostname
hostnamectl set-hostname Fedora28Workspace

# Upgrade
dnf upgrade -y

# Update
dnf update -y

# Firmware Update
fwupdmgr refresh --force
fwupdmgr get-updates
fwupdmgr update

# Enable RPM Fusion
dnf install -y https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
dnf install -y https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
dnf upgrade --refresh
dnf groupupdate core


# Install
dnf install -y vim-enhanced clamav clamav-update wget curl dkms gcc bzip2 make perl elfutils-libelf-devel tar gnome-tweak-tool chrome-gnome-shel

# Kernel
export KERN_DIR=/usr/src/kernels/$(uname -r)

# SNAP
dnf install -y snapd
ln -s /var/lib/snapd/snap /snap
