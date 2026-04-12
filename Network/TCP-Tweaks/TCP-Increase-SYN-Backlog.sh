#!/bin/sh
# Increase TCP Max Syn Backlog 
# Determines the number of incoming connections that can be queued for handling.

sysctl -w net.ipv4.tcp_max_syn_backlog=2048