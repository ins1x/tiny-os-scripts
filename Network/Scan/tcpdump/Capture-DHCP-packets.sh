#!/bin/sh
# Capture DHCP request and reply. 
# DHCP requests are seen on port 67 and the reply is on 68.
sudo tcpdump -v -n port 67 or 68