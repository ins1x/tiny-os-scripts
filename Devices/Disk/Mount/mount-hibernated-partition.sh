#!/bin/bash

echo "List partitions:"
sudo fdisk -l

echo ""
echo "partition to be mounted:"
read partition

if sudo fdisk -l | grep  $partition >/dev/null 2>&1; then
    echo "Mounting partition..."
    sudo mount -t ntfs-3g -o remove_hiberfile $partition /media/windows
else
    echo "Partition can't be finded"
fi
