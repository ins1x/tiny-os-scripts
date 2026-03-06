#!/bin/sh
# Check DNS record type for host

read -p "Enter host address:" host
echo check A record
host -t a $host
echo check MX record
host -t mx $host
echo check PTR record
host -t ptr $host
echo check NS record
host -t ns $host
