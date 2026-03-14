#!/bin/bash
#Real-Time Successful SSH Login Monitor
LOG="/var/log/auth.log"

tail -Fn0 "$LOG" | \
grep --line-buffered "Accepted " | \
while read -r line; do
    echo "$(date '+%F %T') LOGIN: $line"
done