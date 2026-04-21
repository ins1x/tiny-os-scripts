#!/bin/sh
# Change the encoding of all files in a directory and subdirectories
find . -type f  -name '*.sh' -exec sh -c 'iconv -f cp1252 -t utf-8 "$1" > converted && mv converted "$1"' -- {} \;