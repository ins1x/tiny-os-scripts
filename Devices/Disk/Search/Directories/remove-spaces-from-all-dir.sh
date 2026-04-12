#!/bin/sh
# Remove spaces recursively from all subdirectories of a directory
find /path/to/dir -type d | tac | while read LINE; do target=$(dirname "$LINE")/$(basename "$LINE" | tr -d ' '); echo mv "$LINE" "$target"; done