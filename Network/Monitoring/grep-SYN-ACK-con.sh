#!/bin/bash
# Check server's queue of half-open connections gets clogged—those 
# that are stuck at the SYN → SYN/ACK stage but have not received the final ACK.
watch -n1 "netstat -ant | grep SYN"