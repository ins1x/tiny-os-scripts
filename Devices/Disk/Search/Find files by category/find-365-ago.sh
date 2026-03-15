#!/bin/sh
# check the file 365 ago and delete
find ./ -type f -mtime +365 -exec rm -f {} \;