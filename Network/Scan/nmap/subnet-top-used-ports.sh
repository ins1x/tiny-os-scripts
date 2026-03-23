#!/bin/sh
# Find out service versions for the 100 most common ports in the subnet
nmap -sV --top-ports 100 10.20.1.0/24