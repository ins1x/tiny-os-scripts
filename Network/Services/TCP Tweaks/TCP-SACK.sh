#!/bin/sh
# TCP SACK 
# The Selective Acknowledgment (SACK) feature allows devices to inform senders 
# about lost packets, facilitating more efficient retransmissions.

sysctl -w net.ipv4.tcp_sack=1