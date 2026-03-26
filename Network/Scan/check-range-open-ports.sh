#!/bin/bash
# Check Open Ports with Bash /dev/tcp (range 20-80 port)
for PORT in {20..80}; do
  timeout 1 bash -c "</dev/tcp/10.10.8.8/$PORT &>/dev/null" && echo "port $PORT is open"
done