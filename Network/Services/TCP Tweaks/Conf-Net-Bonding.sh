#!/bin/sh
# Configure Network Bonding
# Combine multiple network interfaces for increased bandwidth and redundancy

apt-get install ifenslave
echo "bonding" >> /etc/modules