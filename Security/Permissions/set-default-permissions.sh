#!/bin/sh
# Set standard permissions (rwxr-xr-x)
find /path/to/folder -type d -exec chmod 755 {} +
find /path/to/folder -type f -exec chmod 644 {} +