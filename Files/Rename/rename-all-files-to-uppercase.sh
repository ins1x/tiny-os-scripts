#!/bin/sh
# Rename all files in a directory to upper case
for i in *; do mv "$i" "${i^^}"; done