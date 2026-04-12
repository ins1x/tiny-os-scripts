#!/bin/sh
# TCP FIN Timeout 
# Adjusts the timeout to close a connection, freeing up resources sooner.

sysctl -w net.ipv4.tcp_fin_timeout=30