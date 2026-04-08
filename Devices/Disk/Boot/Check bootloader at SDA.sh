#!/bin/sh
# Ceck inside the first sector of the hard drive SDA, for what boot manager it is using 
sudo dd if=/dev/sda bs=512 count=1 2>/dev/null | strings | grep -Eoi 'grub|lilo|acronis|reboot'