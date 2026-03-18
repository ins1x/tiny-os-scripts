#!/bin/sh
# List ESTABLISHED TCP connections
cat /proc/net/sockstat | awk '{print $3}' | head -2 | tail -1 