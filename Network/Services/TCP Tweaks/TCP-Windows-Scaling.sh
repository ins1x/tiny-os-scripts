#!/bin/sh
# TCP Window Scaling 
# Enables TCP window size adjustments, allowing for larger buffers
# which can improve data throughput for connections.

sysctl -w net.ipv4.tcp_window_scaling=1