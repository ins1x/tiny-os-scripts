#!/bin/sh 
# Optimize ARP Cache Settings
# Tune ARP cache settings to handle large numbers of IP addresses efficiently

sysctl -w net.ipv4.neigh.default.gc_thresh1=1024
sysctl -w net.ipv4.neigh.default.gc_thresh2=2048
sysctl -w net.ipv4.neigh.default.gc_thresh3=4096