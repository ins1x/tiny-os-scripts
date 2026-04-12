#/bin/sh
# Enable TCP timestamps for better performance and reliability

sysctl -w net.ipv4.tcp_timestamps=1