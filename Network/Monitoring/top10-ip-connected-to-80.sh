#!/bin/bash
# List top 10 IP addresses connected to your server on port 80 with the number of connections
netstat -tn 2>/dev/null | awk '/:80\>/ {print $5}' | cut -d: -f1 | sort | uniq -c | sort -nr | head