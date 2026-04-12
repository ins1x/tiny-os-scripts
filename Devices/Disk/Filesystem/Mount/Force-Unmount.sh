#!/bin/sh
# Forcefully unmount a disk partition
# Change /mount/point to your device like /dev/sda1
# before unmounting locate active processes/users
lsof /mount/point
umount -lf /mount/point