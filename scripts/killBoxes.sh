#!/bin/bash

while read -r name; do
  vboxmanage controlvm "$(echo $name | awk '{print$2}' |sed -e 's/.*{\([^}]\+\)}.*/\1/g')" poweroff 2>&1
done < <(VBoxManage list runningvms)

while read -r name; do
  VBoxManage unregistervm "$(echo $name | awk '{print$2}' |sed -e 's/.*{\([^}]\+\)}.*/\1/g')" --delete 2>&1
done < <(VBoxManage list vms)
