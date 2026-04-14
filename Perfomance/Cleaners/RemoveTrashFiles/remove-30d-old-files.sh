#!/bin/sh
# Remove files over 30 days old
find . -mtime +30 | xargs rm -rf