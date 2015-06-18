# Vagrant Box with Docker Installation.

This is a Vagrant Box, never use it in Production!

## Installed

* Docker
* Docker-Compose
* Latest BlackLabelOps Centos 7.1 Base Box release! ([blacklabelops/centos](https://atlas.hashicorp.com/blacklabelops/boxes/centos))

## Init

### Latest Version

~~~~
$ vagrant init blacklabelops/dockerdev
$ vagrant up
~~~~

### Fix Version

~~~~
$ vagrant init blacklabelops/dockerdev https://atlas.hashicorp.com/blacklabelops/boxes/dockerdev/versions/!ATLAS_VERSION!
$ vagrant up
~~~~

## Fix Versions

This is an example for using fix versions inside the Vagrantfile.

```text
# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.require_version ">= 1.7.2"

Vagrant.configure("2") do |config|
  config.vm.box = "blacklabelops/dockerdev"
  config.vm.box_version = "!ATLAS_VERSION!"

  ...

end
```

## Build

## Latest Version

Github [BlackLabelOps/DockerDev](https://github.com/blacklabelops/dockerdev)
