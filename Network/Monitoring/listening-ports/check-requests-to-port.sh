#!/bin/sh
# Check for requests to TCP port 22 
cat /proc/net/nf_conntrack | grep 'dport=22'