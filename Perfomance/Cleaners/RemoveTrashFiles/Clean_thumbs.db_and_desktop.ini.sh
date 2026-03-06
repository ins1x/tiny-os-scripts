#!/usr/bin/sh
# Delete all Thumbs.db and Desktop.ini files
# More about this files http://en.wikipedia.org/wiki/Desktop.ini and http://en.wikipedia.org/wiki/Thumbs.db
# Can be dangerous to use only if you are sure what you are doing

find . -name Thumbs.db -exec rm -f {} \;
find . -name Desktop.ini -exec rm -f {} \;

# Uncomment the code below if you want delete these files on all removable media from the /media folder
# find /media/ -name Thumbs.db -exec rm -f {} \;
# find /media/ -name Desktop.ini -exec rm -f {} \;
