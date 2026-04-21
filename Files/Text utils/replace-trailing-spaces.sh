#!/bin/bash
# Replace trailing spaces
find . -name "*.php" -type f | xargs sed -i 's/[ \t]*$//'
# find . -name "*.php" -type f | xargs awk '/[ \t]+$/ {print FILENAME;print NR; print;}'