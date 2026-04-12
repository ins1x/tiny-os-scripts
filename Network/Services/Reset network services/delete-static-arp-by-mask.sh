#!/bin/sh
# Delete static and dynamic arp for /24 subnet
for i in {1..254}; do arp -d 192.168.0.$i; done