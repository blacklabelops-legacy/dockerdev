#!/bin/bash

# Installation of Docker-Compose
curl -L https://github.com/docker/compose/releases/download/1.3.1/docker-compose-`uname -s`-`uname -m` > ~/docker-compose
chmod +x ~/docker-compose
cp ~/docker-compose /usr/bin/
rm -rf ~/docker-compose

/usr/bin/docker-compose --version
