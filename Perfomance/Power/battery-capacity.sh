#!/bin/sh
# Show battery capacity percentage
capacity=$(cat /sys/class/power_supply/BAT0/capacity)
echo "Current battery capacity: $capacity%"