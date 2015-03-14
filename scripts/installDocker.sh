#!/bin/bash

# Installation of Docker
sudo yum -y install docker docker-registry

# Start Docker and Make Sure Docker Starts on Boot
sudo systemctl enable docker.service
sudo systemctl start docker.service
sudo systemctl status docker.service