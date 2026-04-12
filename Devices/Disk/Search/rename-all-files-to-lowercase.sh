#!/bin/sh
# Rename all items in a directory to lowercase names
for name in *; do mv "$name" "${name,,}"; done