#/bin/sh
# Revert TCP settings to default
sysctl -w net.ipv4.tcp_keepalive_time=7200
sysctl -w net.ipv4.tcp_keepalive_probes=9
sysctl -w net.ipv4.tcp_keepalive_intvl=75
sysctl -w net.ipv4.tcp_window_scaling=1
sysctl -w net.ipv4.tcp_sack=1
sysctl -w net.ipv4.tcp_fin_timeout=60
sysctl -w net.ipv4.tcp_max_syn_backlog=128
sysctl -w net.ipv4.tcp_max_tw_buckets=5000
sysctl -w net.ipv4.tcp_fastopen=0
