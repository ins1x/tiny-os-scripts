#!/bin/sh
# List the top talkers for a period of time or number of packets. 
sudo tcpdump -nnn -t -c 200 | cut -f 1,2,3,4 -d '.' | sort | uniq -c | sort -nr | head -n 20