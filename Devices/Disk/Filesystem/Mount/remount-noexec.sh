#!/bin/bash
# Fix permission denied during installation caused by noexec mount option for /tmp
echo "Check the mount options"
findmnt /tmp
#Result may look something like this:
#/tmp   tmpfs  tmpfs  rw,nosuid,nodev,noexec,relatime,seclabel,inode64
# Remount the /tmp and change the noexec to exec while copying the other options.
sudo mount -o remount,exec,rw,nosuid,nodev,relatime,seclabel,inode64 /tmp
