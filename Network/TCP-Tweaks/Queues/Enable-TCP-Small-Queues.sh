#!/bin/sh
# Enable TCP Small Queues (TSQ)

sysctl -w net.ipv4.tcp_limit_output_bytes=131072