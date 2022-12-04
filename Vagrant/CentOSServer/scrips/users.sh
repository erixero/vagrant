#!/bin/bash

# Erick User with Home
sudo useradd -m erick.quinteros -G wheel
# Docker System User
sudo useradd docker -G wheel -r