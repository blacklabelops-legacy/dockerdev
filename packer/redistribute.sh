#!/bin/bash

readonly FILE_TIMESTAMP='%Y-%m-%d-%H-%M-%S'

virtualbox_id=$(cat .vagrant/machines/default/virtualbox/id)
temporary_clone="Redistribution"-$(date +$FILE_TIMESTAMP)

if [ -z "$virtualbox_id" ]; then
  echo "Virtualbox Id missing. Stopping process!"
  exit 1
fi

running_vm=$(VBoxManage list runningvms | grep ${virtualbox_id})

if [ ! -z "$running_vm" ]; then
  echo "Stopping running VM!"
  #Stop possible running vm
  VBoxManage controlvm "${virtualbox_id}" poweroff
fi

#Clone current vm
VBoxManage clonevm "${virtualbox_id}" --name ${temporary_clone} --register
#Export clone vm
VBoxManage export "${temporary_clone}" --output Redistribution.ovf
#Delete clone vm
VBoxManage unregistervm ${temporary_clone} --delete
