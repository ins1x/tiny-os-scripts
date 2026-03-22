#!/bin/sh
# Implement TCP MSS Clamping
# Adjust TCP MSS (Maximum Segment Size) to avoid fragmentation

iptables -t mangle -A FORWARD -p tcp --tcp-flags SYN,RST SYN -j TCPMSS --clamp-mss-to-pmtu