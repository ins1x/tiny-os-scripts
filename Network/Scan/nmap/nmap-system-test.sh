#!/bin/bash
# Comprehensive check (OS, services, scripts, traceroute) for open ports
ports=$(nmap -p- --min-rate=500 $1 | grep ^[0-9] | cut -d/ -f1 | tr '\n' ',' | sed 's/,$//')
nmap -p$ports -A $1