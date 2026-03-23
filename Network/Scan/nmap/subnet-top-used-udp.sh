#!/bin/sh
# Find out service versions for the 50 most common ports in the subnet
# UDP requires root privileges and takes more time - choose top ports.
sudo nmap -sU --top-ports 50 10.20.1.5