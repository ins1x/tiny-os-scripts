#!/bin/sh
# Capture Hosts based on IP address
# Using the host filter will capture traffic going to (destination) and from (source) the IP address.
sudo tcpdump -i eth0 host 10.10.1.1