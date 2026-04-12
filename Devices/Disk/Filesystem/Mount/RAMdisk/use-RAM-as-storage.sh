#!/bin/sh
# Use RAM Disks for High-Performance Temporary Storage
# Mount a portion of your RAM as a disk for extremely fast I/O operations
mount -t tmpfs -o size=1G tmpfs /mnt/ramdisk