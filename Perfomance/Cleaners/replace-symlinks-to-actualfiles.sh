#!/bin/sh
# Replace symlinks with the actual files they are pointing at
find /path/to/dir -type l -exec sh -c 'cp --remove-destination "$(readlink "{}")" "{}"' \; 