#!/bin/bash

# Set Up Docker Repository
yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo

# Install Docker with no Key Verification
yum install -y --nogpgcheck docker-ce docker-ce-cli containerd.io docker-compose-plugin

# install docker-compose
mkdir -p /opt/bin/
curl -L https://github.com/docker/compose/releases/download/1.24.1/docker-compose-$(uname -s)-$(uname -m) > ./docker-compose
mv docker-compose /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

# Start Service
systemctl enable docker
systemctl start docker

# Create Folders
mkdir /data/db/MariaDB
mkdir /data/db/MongoDB

mkdir /var/lib/maria
mkdir /var/lib/mongo
