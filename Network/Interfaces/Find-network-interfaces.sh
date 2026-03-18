#!/bin/sh
# For WiFi
find /sys/class/net/ -name "wlp*" -exec basename \{} \; 
# For Ethernet
find /sys/class/net/ -name "enp*" -exec basename \{} \;