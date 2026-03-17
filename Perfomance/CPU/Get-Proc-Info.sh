#!/bin/sh
# Show cpu info used default tools
# Debian GNU Linux, Ubuntu ,Mint and more dists
lscpu
echo Full info
cat /proc/cpuinfo
echo Temperature core
sensors | grep Core