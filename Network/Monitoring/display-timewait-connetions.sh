#!/bin/sh
# Display the number of TIME_WAIT connections
ss -s | grep TIME-WAIT
cat /proc/sys/net/core/netdev_max_backlog