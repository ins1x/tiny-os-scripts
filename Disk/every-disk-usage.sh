#!/usr/bin/sh
# sort according to every disk usage
df -h | grep -v ^none | ( read header ; echo "$header" ; sort -rn -k 5)