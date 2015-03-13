#!/bin/bash

# Stop docker
sudo systemctl stop docker.service

# Download and replace docker
sudo wget https://get.docker.com/builds/Linux/x86_64/docker-latest -O /usr/bin/docker

# Start docker
sudo systemctl start docker.service

