#!/bin/sh
# Use BBRv2 for enhanced TCP congestion control performance

sysctl -w net.ipv4.tcp_congestion_control=bbr