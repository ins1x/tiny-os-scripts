#!/bin/sh
# Enabling automatic detection of Path MTU (maximum packet size) for TCP connections
# recommended for hosts with jumbo frames enabled
net.ipv4.tcp_mtu_probing=1