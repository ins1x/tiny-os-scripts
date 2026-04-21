#!/bin/sh
# Find executable files
find . -perm /u=x,g=x,o=x
find . -executable