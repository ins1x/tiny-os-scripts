#!/bin/sh
# Get serial for all hard disks
# Keep in mind lsblk lists information about all available (or the specified) block devices.
# sudo apt-get install util-linux
lsblk --nodeps -o name,serial