#!/bin/sh
# List usernames sorted by user ids
cut -d ':' -f 1,3 /etc/passwd | sort -t ':' -k2n - | tr ':' '\t'