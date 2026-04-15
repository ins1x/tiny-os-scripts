#!/bin/sh
# Provide all of the info about the block devices 
# (served up in handy little key=value pairs)
for blk in $(lsblk -ndo name) ; do
    udevadm info --name /dev/$blk 
done