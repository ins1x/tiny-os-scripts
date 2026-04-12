#!/bin/sh
# Crawl through the PIDs and get SHA1 hashes of kernel imposters 
awk '{print $2}' | xargs -I % sh -c 'echo PID: %; sha1sum /proc/%/exe' 2> /dev/null