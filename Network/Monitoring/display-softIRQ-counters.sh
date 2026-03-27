#!/bin/sh
# Displays the cumulative count of network receive software interrupts (softirqs) 
# on each CPU core since the system booted
cat /proc/softirqs | grep NET_RX