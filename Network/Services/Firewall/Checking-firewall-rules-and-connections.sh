#!/bin/sh
# Checking current rules and connections
iptables -L -v -n
ss -tulnp