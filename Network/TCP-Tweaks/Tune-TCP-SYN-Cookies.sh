#!/bin/sh
# Tune TCP SYN Cookies
# Enable SYN cookies to protect against SYN flood attacks while allowing legitimate traffic.

sysctl -w net.ipv4.tcp_syncookies=1