#!/bin/sh
#Example. Open UDP port and restart firewall daemon
sudo firewall-cmd --add-port=<port>/udp --permanent
sudo systemctl restart firewalld