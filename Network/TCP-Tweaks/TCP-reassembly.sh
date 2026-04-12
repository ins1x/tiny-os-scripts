#!/bin/sh
# Adjust TCP reassembly settings to handle fragmented packets more efficiently

sysctl -w net.ipv4.tcp_reordering=3