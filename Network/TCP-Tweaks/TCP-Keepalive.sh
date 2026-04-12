#!/bin/sh
# TCP Keepalive 
# Adjusts how long TCP should wait before sending keepalive messages to confirm that an idle connection is still active.

sysctl -w net.ipv4.tcp_keepalive_time=600
sysctl -w net.ipv4.tcp_keepalive_probes=5
sysctl -w net.ipv4.tcp_keepalive_intvl=60