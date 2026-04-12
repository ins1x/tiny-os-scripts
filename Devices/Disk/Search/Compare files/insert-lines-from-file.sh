#!/bin/sh
# Insert lines from one text file to another one
awk 'NR % 10 == 1 {getline f2 < "file1"; print f2} 1' file2 | cat -n