#!/bin/sh
# Return the netmask of an interface
ip -br a sh eth0 | awk '{ print $3 }'