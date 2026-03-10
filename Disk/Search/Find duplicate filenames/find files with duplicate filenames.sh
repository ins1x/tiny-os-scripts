#!/bin/bash
# This one-liner will recursively list all files with the same name within a given directory, such as the current directory
find . -type f -printf "%f\n" | sort | uniq -c | awk '$1 > 1 {print $2}' | while read filename; do
    echo "Duplicate filename: $filename"
    find . -name "$filename"
    echo "---"
done