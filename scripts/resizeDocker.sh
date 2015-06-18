#!/bin/bash

# Script resizes the docker device file, making more than default space available

# Stop docker
systemctl stop docker.service

# Delete all docker container and images
rm -rf /var/lib/docker

# New directory
mkdir -p /var/lib/docker/devicemapper/devicemapper

# Create a 250gb sparse file
dd if=/dev/zero of=/var/lib/docker/devicemapper/devicemapper/data bs=1G count=0 seek=250

# Start docker
systemctl start docker.service
