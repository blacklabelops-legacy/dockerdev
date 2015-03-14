# BlacklabelOps/DockerDev

Vagrantfile for a Docker development environment.

## Use Published Box

~~~~
$ vagrant init blacklabelops/docker
$ vagrant up
$ vagrant ssh
~~~~    

> This will download the tagged box from Atlas and start a new Vagrant box.

## Build and Use Box

~~~~
$ vagrant up
$ vagrant ssh
~~~~    

> This will start and publish the Vagrant box and connect to the running box.

## What's inside?

* CentOS7
* Docker Latest
* Docker-Compose

## Tested with

* Vagrant 1.7.2, 1.7.1

## References

* [Box Homepage](https://atlas.hashicorp.com/blacklabelops/boxes/docker)
* [Vagrant Homepage](https://www.vagrantup.com/)
* [Atlas Homepage](https://atlas.hashicorp.com)


