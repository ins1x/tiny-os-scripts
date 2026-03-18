#!/bin/sh
# Displays real-time network traffic statistics for all interfaces, refreshing every 1 second
watch -n 1 'cat /proc/net/dev'