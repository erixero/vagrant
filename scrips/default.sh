# Update Default Packages
sudo yum check-updates
sudo yum -y update
# Setup Firewall
sudo yum install firewalld
sudo systemctl start firewalld
sudo systemctl enable firewalld

# Firewall Exeptions
sudo firewall-cmd --permanent --add-service=ssh
sudo firewall-cmd --permanent --add-service=http
sudo firewall-cmd --permanent --add-service=https
sudo firewall-cmd --permanent --add-service=smtp

# Reload Firewall
sudo firewall-cmd --reload

# Swap Memory
sudo fallocate -l 4G /swapfile
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
sudo sh -c 'echo "/swapfile none swap sw 0 0" >> /etc/fstab'

# Create User
adduser erick.quinteros
#Create docker user
adduser dockerUser

#  DOCKER DEPENDENCIES yum-utils will provide the yum-config-manager. The device-mapper-persistent-data and lvm2 packages are necessary for the devicemapper storage driver
yum install -y yum-utils device-mapper-persistent-data lvm2

#User must be on the docker group
usermod -aG docker dockerUser
usermod -aG docker erick.quinteros

#give user sudo ptileges
gpasswd -a dockerUser wheel
gpasswd -a erick.quinteros wheel


# Generate keys to accesss the server
sudu su - erick.quinteros
ssh-keygen
cat ~/.ssh/id_rsa.pub

#Reload SSHD
systemctl reload sshd