#!/bin/bash

# Installation of Docker-Compose
curl -L https://github.com/docker/compose/releases/download/1.2.0/docker-compose-`uname -s`-`uname -m` > ~/docker-compose
chmod +x ~/docker-compose
cp ~/docker-compose /usr/local/bin/
rm -rf ~/docker-compose

/usr/local/bin/docker-compose --version
