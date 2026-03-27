#!/bin/sh
# Find files older than 365 days
find ./ -type f -mtime +365 
# check the file 365 ago and delete
# find ./ -type f -mtime +365 -exec rm -f {} \;