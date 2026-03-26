#!/bin/sh
# Dumps current IPv4/IPv6 rules to stdout, commonly redirected to a file (e.g., /etc/iptables.rules)
iptables-save > /etc/iptables.rules
# Restore iptables from dump
# iptables-restore < /etc/iptables.rules