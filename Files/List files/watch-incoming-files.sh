#!/bin/sh
# Watch the number of incoming files in the directory
watch -n 1 'find /data/incoming -type f | wc -l'
