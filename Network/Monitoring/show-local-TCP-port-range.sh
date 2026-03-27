#!/bin/sh
# Show ip_local_port_range TCP port range 
cat /proc/sys/net/ipv4/ip_local_port_range
ss -ant | grep TIME-WAIT | wc -l