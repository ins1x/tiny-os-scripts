#!/bin/bash
# Searching for binaries not managed by the package manager

# Any file in /usr/bin or /usr/sbin that is unknown to the package manager is an anomaly.
# It could have appeared via manual installation, compilation from source, or—worse—been planted intentionally.

# Checking on Debian/Ubuntu:
find /usr/bin /usr/sbin -type f | while read -r bin; do
  dpkg -S "$bin" &>/dev/null || echo "NOT IN PACKAGES: $bin"
done

# RHEL/CentOS:
# find /usr/bin /usr/sbin -type f | while read -r bin; do
  # rpm -qf "$bin" &>/dev/null || echo "NOT IN PACKAGES: $bin"
# done