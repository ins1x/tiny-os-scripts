#!/bin/sh
# For a host with a 10G NIC optimized for network paths up to 200ms RTT
# and for friendliness to single and parallel stream tools, or a 40G NIC up on paths up to 50ms RTT:

# allow TCP with buffers up to 128MB
net.core.rmem_max = 134217728 
net.core.wmem_max = 134217728 
# increase TCP autotuning buffer limits.
net.ipv4.tcp_rmem = 4096 87380 67108864
net.ipv4.tcp_wmem = 4096 65536 67108864