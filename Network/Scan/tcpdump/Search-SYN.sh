#!/bin/bash
# Search SYN only (searching for new connections)
tcpdump -i eth0 'tcp[tcpflags] & tcp-syn != 0'