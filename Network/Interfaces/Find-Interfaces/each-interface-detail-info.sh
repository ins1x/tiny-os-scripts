#!/bin/bash
# Detailed info about each network interface

for interface in /sys/class/net/*; do
    iface=$(basename $interface)
    state=$(cat $interface/operstate)
    ip=$(ip -4 addr show $iface | grep -oP '(?<=inet\s)\d+(\.\d+){3}')
    echo "Interface: $iface | State: $state | IP: $ip"
done