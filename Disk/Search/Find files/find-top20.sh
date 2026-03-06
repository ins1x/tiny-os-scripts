#!/bin/sh
# check the top 20 largest files
find . -type f -exec ls -s {} \; | sort -n -r | head -20