#!/bin/sh
# Outbound DNS request to Google public DNS and the A record (ip address) response
sudo tcpdump -i wlp58s0 -s0 port 53