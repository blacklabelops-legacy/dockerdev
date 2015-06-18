#!/bin/bash

# Installation of Docker
curl -L https://github.com/docker/compose/releases/download/1.2.0/docker-compose-`uname -s`-`uname -m` > ~/docker-compose
chmod +x ~/docker-compose
sudo cp ~/docker-compose /usr/local/bin/
