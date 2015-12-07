# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

  config.vm.box = "blacklabelops/latestcentos"
  config.vm.box_url = "https://atlas.hashicorp.com/blacklabelops/boxes/centos/versions/1.latest/providers/virtualbox.box"

  config.vm.provider "virtualbox" do |vb|
  	# Display the VirtualBox GUI when booting the machine
    vb.gui = false

	  # Customize the amount of memory on the VM:
    vb.memory = "1024"
  end

  config.vm.provision "shell", path: "scripts/installPackages.sh"
  config.vm.provision "shell", path: "scripts/installDockerMachine.sh"
  config.vm.provision "shell", path: "scripts/installDocker.sh"
  config.vm.provision "shell", path: "scripts/installDockerCompose.sh"
  config.vm.provision "shell", path: "scripts/installGoogleCloudSDK.sh"
  config.vm.provision "shell", path: "scripts/installKubernetes.sh"
end
