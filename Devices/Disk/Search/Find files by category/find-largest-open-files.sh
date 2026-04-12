#!/bin/sh
# Show the 10 largest open files
lsof / | awk '$7 > 1048576 { print $7 / 1048576 "MB", $9, $1 }' | sort -nu | tail