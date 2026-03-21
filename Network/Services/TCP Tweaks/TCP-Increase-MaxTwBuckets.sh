#!/bin/sh
# Increase TCP Max Tw Buckets 
# Controls the maximum number of TCP sockets in TIME_WAIT state, managing memory use.

sysctl -w net.ipv4.tcp_max_tw_buckets=400000