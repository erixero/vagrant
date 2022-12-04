#!/bin/bash

USER="erick.quinteros"
PASS=6183768

# Add user
useradd $USER

# Add user to the wheel group
usermod --append --groups vboxsf $USER
usermod --append --groups wheel $USER

# Password
echo $PASS | passwd --stdin $USER

# Defaul Shell Zsh
usermod -s $(which zsh) $USER
