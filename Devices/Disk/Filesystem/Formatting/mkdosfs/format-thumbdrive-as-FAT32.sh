#!/bin/sh
# Format a whole thumbdrive as FAT32, without a partition table
sudo umount /dev/sdc1 && sudo mkdosfs -F 32 -I /dev/sdc1