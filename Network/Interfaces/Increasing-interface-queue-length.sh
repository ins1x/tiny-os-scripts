#/bins/sh
# Increasing the network interface queue length can help handle 
# more packets during traffic bursts, reducing packet drops.
ifconfig eth0 txqueuelen 10000
