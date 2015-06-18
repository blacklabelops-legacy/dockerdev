#!/bin/bash

# Stop docker
systemctl stop docker.service

# Download and replace docker
wget https://get.docker.com/builds/Linux/x86_64/docker-latest -O /usr/bin/docker

# Start docker
systemctl start docker.service
