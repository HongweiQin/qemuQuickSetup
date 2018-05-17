#!/bin/bash
/usr/local/bin/qemu-system-x86_64 \
-smp 16 \
-m 16G \
--enable-kvm \
-hda ./images/qhwVM.qcow2 \
-net nic,macaddr=52:54:00:66:77:88 -net tap,ifname=tap0,script=./network/qemu-ifup.sh,downscript=no 

