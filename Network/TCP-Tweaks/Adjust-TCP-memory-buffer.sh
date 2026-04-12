#!/bin/sh
# Adjust TCP memory buffer settings for better performance

sysctl -w net.ipv4.tcp_rmem='4096 87380 16777216'
sysctl -w net.ipv4.tcp_wmem='4096 65536 16777216'