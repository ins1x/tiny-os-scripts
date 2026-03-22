#!/bin/sh
# Optimize TCP Congestion Control for High Latency Networks
# Use a suitable TCP congestion control algorithm for high-latency networks

sysctl -w net.ipv4.tcp_congestion_control=htcp