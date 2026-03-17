#!/bin/bash
# Use the cat/bat/more/less command or grep/egrep command to see /proc/meminfo file. 

cat /proc/meminfo
less /proc/meminfo
more /proc/meminfo
grep -E --color 'Mem|Cache|Swap' /proc/meminfo