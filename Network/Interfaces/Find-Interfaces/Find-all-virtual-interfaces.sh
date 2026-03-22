#!/bin/sh
# Show virtual interfaces
for i in $(ls /sys/class/net); do
    if [[ $(readlink /sys/class/net/$i) =~ devices/virtual ]]; then
        echo "$i is virtual interface"
    fi
done