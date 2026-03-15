#!/bin/sh
# Check UID 0 users other than root
awk -F: '($3 == 0 && $1 != "root"){print}' /etc/passwd