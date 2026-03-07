#!/bin/sh
# List loaded modules
less /proc/modules
# Use the find command as follows: 
# find /lib/modules/$(uname -r)/kernel/drivers/ -iname "driver-to-search-here"
