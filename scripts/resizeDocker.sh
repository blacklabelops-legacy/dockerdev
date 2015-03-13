#!/bin/bash

# Stop docker
sudo systemctl stop docker.service

# Delete all docker container and images
sudo rm -rf /var/lib/docker

# New directory
sudo mkdir -p /var/lib/docker/devicemapper/devicemapper

# Create a 250gb sparse file
dd if=/dev/zero of=/var/lib/docker/devicemapper/devicemapper/data bs=1G count=0 seek=250

# Start docker
sudo systemctl start docker.service

