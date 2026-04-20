#!/bin/bash
# Select most popular IPs in nginx access log in last 5000 rows
tail -n 5000  /var/log/nginx-access.log  | awk '{print $1}' | sort -n | uniq -c | sort -nr | head -20