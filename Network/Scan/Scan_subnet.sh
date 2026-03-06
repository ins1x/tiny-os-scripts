#!/bin/bash
# In this example, the Bash script will scan the network for hosts attached to an IP address 10.1.1.1 – 255. The script will print message Node with IP: IP-address is up if ping command was successful. Feel free to modify the script to scan your hosts range.

is_alive_ping()
{
  ping -c 1 $1 > /dev/null
  [ $? -eq 0 ] && echo Node with IP: $i is up.
}

for i in 10.1.1.{1..255} 
do
is_alive_ping $i & disown
done