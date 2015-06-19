#!/bin/bash

# Installation of Docker
curl -sSL https://get.docker.com > installDocker.sh
chmod +x installDocker.sh
sudo ./installDocker.sh
rm -f installDocker.sh

# Docker User Group
sudo groupadd docker
sudo usermod -aG docker vagrant

# Start Docker and Make Sure Docker Starts on Boot
sudo service docker start
sudo docker version

#Starting docker at reboot
sudo chkconfig docker on
