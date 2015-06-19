#!/bin/bash

# Installation of Docker Machine
curl -L https://github.com/docker/machine/releases/download/v0.3.0/docker-machine_linux-amd64 > /usr/bin/docker-machine
chmod +x /usr/bin/docker-machine
/usr/bin/docker-machine -v
