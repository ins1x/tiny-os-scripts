#!/bin/sh
# Add text to Beginning of file
sed -i '1s/^/task goes here\n/' todo.txt
# or
echo 'task goes here' | cat - todo.txt > temp && mv temp todo.txt