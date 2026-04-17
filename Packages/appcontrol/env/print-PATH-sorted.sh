#!/bin/bash
# Print the paths in $PATH sorted by line length
echo "${PATH//:/\\n}" | awk '{print length, $0}' | sort -n | cut -f2- -d' '