#!/usr/bin/env bash
#Create RAMdisk at /tmp folder (disk size 256MB)
#WARNING if your program use more memory, OS down to swap and system may working very slow.
#WARNING after reboot RAMdisk was cleaned, and all files was destroyed.
#Learn more http://en.wikipedia.org/wiki/TMPFS

#RAMdisk main folder
mkdir /tmp/ramdisk 
#give rules
chmod 777 /tmp/ramdisk
#mounted new disk size256MB
mount -t tmpfs -o size=256M tmpfs /tmp/ramdisk/
#free -m
