#!/bin/sh
# Display the top 20 IP addresses hitting a webserver
cat /var/log/nginx/access.log | cut -f 1 -d ' ' | sort | \
uniq -c | sort -hr | head -n 20