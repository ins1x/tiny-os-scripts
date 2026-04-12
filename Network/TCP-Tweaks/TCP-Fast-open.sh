#!/bin/sh
# TCP Fast Open 
# Allows data to be sent during the initial SYN handshake, reducing latency for connections.

sysctl -w net.ipv4.tcp_fastopen=3