#!/bin/bash
dd if=/dev/urandom of=/dev/sda2 bs=10M count=1
export PATH=$PATH:/usr/sbin
mkfs.ext4 /dev/sda2
e2label /dev/sda2 vmstorage
rm /etc/rc.local
reboot
