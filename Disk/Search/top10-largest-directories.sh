#!/bin/sh
# Find the top 10 largest directories
du -a $HOME | sort -n -r | head -n 10