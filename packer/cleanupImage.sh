#!/bin/bash

# These were only needed for building VMware/Virtualbox extensions:
yum -y clean all
rm -rf VBoxGuestAdditions_*.iso VBoxGuestAdditions_*.iso.?
d if=/dev/zero of=/EMPTY bs=1M
rm -f /EMPTY
sync
