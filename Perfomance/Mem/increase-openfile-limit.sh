#!/bin/sh
# Increase Open File Limits
echo "fs.file-max = 500000" >> /etc/sysctl.conf
ulimit -n 500000