#!/bin/sh
# Find dead symlinks
find . -type l -! -exec test -e {} \; -print