#!/bin/sh
# Increase TCP backlog settings to handle more simultaneous connections
sysctl -w net.core.somaxconn=1024
sysctl -w net.core.netdev_max_backlog=5000