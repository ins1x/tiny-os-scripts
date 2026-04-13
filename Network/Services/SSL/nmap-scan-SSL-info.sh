#!/bin/bash
# Scan for SSL certificate information on a specific port
nmap -p 443 --script ssl-cert example.com
