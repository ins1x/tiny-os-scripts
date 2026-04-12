#!/bin/sh
# Find empty (0 byte) files
find . -type f -empty
# to further delete all the empty files
# find . -type f -empty -delete
