#!/bin/sh
# Find which directories use the most inodes 
du --inodes -S /path/to/search | sort -rh | head -n 10