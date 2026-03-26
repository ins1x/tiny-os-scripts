#!/bin/bash
# Alternative solution if broadcasts and nmap are not available
echo -e 192.168.2.{1..10}"\n" |nslookup |grep name