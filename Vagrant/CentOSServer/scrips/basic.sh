#!/bin/bash

# Clean Repositories
yum clean all

# Install Reckired Packages Not Verify the KEY
yum install --nogpgcheck -y dkms epel-release epel-next-release NetworkManager-team bc

# Install Cbr Repositori
yum install -y config-manager
yum-config-manager crb

# Update Current Packages
yum -y update
yum -y upgrade

# Install Guest Aditions Reckired Packages
yum install -y tar bzip2 kernel-devel kernel-headers perl gcc make
# Install Pckages Reqiured by MongoDB
yum install -y make checkpolicy policycoreutils selinux-policy-devel
# Install Packeges Required by Docker
yum install -y yum-utils device-mapper-persistent-data lvm2
#Install Rekired Pakages
yum install -y git vim virtualbox-guest-additions

# SELinux Permissive
setenforce 0
