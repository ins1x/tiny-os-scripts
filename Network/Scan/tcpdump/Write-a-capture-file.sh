#!/bin/sh
# Writing a capture file to disk allows the file to be opened in Wireshark or other packet analysis tools.
sudo tcpdump -i eth0 -s0 -w test.pcap