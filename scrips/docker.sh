# Install and Configure Docker

#Change to Docker User
sudo su - dockerUser

# Remove Previous Installation of Docker
yum remove docker docker-client docker-client-latest docker-common docker-latest docker-latest-logrotate docker-logrotate docker-selinux docker-engine-selinux docker-engine

#Setup Docker Repository
yum-config-manager -y --add-repo https://download.docker.com/linux/centos/docker-ce.repo

# Install the Latest Version of Docker
yum install -y docker-ce

#Start the docker Service
systemctl start docker

#Enable run Docker on System Boot
chkconfig docker on
#Old Way
#sudo systemctl enable docker
