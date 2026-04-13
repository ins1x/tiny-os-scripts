#!/bin/bash
# Search for resets RST (Reset) flag
tcpdump -i eth0 'tcp[tcpflags] & tcp-rst != 0'