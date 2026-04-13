#!/bin/sh
# Extract subdomains from IP range
nmap 192.168.1.0/24 | grep "domain" | awk '{print $5}'