#!/bin/sh
# Network tables
echo "Network Interfaces"
ip a
echo "Firewall IP table"
iptables -L -n -v
echo "Network Parameters"
cat /etc/sysctl.conf
echo "IP Routing Table"
ip route
echo "ARP table"
ip neigh show  