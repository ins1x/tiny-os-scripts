#!/bin/sh
# Find the most recently modified files recursivels
find . -type f -printf '%T@ %p\n' | sort -rn | head -n 5
# -printf '%T@ %p\n' Prints modification time (epoch) and filename