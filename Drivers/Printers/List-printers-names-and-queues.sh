#!/bin/sh
# List priners names and print queues
lpstat -p | grep '^printer' | awk '{print $2}' | xargs -n1 lpq -P