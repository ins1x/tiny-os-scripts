#!/bin/sh
# Format a whole thumbdrive as FAT16 or FAT12, without a partition table
sudo umount /dev/sdc1 && sudo mkdosfs -F 16 -I /dev/sdc1