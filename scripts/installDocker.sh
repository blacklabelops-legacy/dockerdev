#!/bin/bash

# Installation of Docker
yum -y install docker docker-registry

# Start Docker and Make Sure Docker Starts on Boot
systemctl enable docker.service
systemctl start docker.service
systemctl status docker.service

sudo docker version
