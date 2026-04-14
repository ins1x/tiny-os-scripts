#!/bin/sh
# Unhide all hidden files in the current directory
find . -maxdepth 1 -type f -name '\.*' | sed -e 's,^\./\.,,' | sort | xargs -iname mv .name name