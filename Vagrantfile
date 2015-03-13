# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  
  config.vm.box = "chef/centos-7.0"

  #
  config.vm.provider "virtualbox" do |vb|
  	# Display the VirtualBox GUI when booting the machine
    vb.gui = false
  
	# Customize the amount of memory on the VM:
    vb.memory = "2048"
  end

  config.vm.provision "shell", path: "scripts/installDocker.sh"
  config.vm.provision "shell", path: "scripts/upgradeDocker.sh"
  config.vm.provision "shell", path: "scripts/installDockerCompose.sh"
end
