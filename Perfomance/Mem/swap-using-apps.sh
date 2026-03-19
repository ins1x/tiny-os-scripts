#!/bin/bash
# List all applications with how much swap space each is using in kilobytes by looping through the status snapshots
for file in /proc/*/status ; do awk '/VmSwap|Name/{printf $2 " " $3}END{ print ""}' $file; done | sort -k 2 -n -r | less