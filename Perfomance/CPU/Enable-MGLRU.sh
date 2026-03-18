#!/bin/sh
# Enable MGLRU (Multi-Gen. Least Recently Used)
# The multi-gen LRU is an alternative LRU implementation that optimizes page reclaim and improves performance under memory pressure. 
# Page reclaim decides the kernel’s caching policy and ability to overcommit memory. It directly impacts the kswapd CPU usage and RAM efficiency.
cat << EOF | sudo tee /etc/tmpfiles.d/mglru.conf
w /sys/kernel/mm/lru_gen/enabled - - - - 7
w /sys/kernel/mm/lru_gen/min_ttl_ms - - - - 0
EOF