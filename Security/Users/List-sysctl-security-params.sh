#!/bin/sh
# List sysctl security params
echo "Display the Address Space Layout Randomization (ASLR) settings"
sysctl kernel.randomize_va_space
echo "Dispaly system accepts ICMP redirect messages on all IPv4 interfaces."
sysctl net.ipv4.conf.all.accept_redirects
echo "Display reverse Path Filtering to prevent IP spoofing by dropping packets that arrive on an unexpected interface."
sysctl net.ipv4.conf.all.rp_filter