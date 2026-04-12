#/bin/sh
# Print file owners and permissions of a directory tree
find /path/to/dir1 -printf "%U %G %m %p\n" > /tmp/dir1.txt