#!/bin/sh 
# Optimize TCP Congestion Control Algorithms
# Experiment with different TCP congestion control algorithms to find the best fit for your workload

sysctl -w net.ipv4.tcp_congestion_control=bbr