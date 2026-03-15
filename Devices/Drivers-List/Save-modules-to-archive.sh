#!/bin/sh
# Create backup of the modules of your current kernel(uname -a) in the modules.tar.
# Note that kernel modules for one kernel version do not necessarily work with another kernel version.
# a few modules come with firmware typically located in /lib/firmware.
tar -c -f modules.tar /lib/modules/$(uname -r)
echo "modules backup done"