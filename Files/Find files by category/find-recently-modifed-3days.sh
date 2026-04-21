#!/bin/sh
# Search for recently modified files.
# displays files modified in the last 3 days (excluding today), and sorts them from newest to oldest.
find /var/www/site -type f -mtime -3 ! -mtime -1 -printf '%TY-%Tm-%Td %TT %p\n' | sort -r