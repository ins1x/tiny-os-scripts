#/bin/sh

# clear ARP cache
sudo ip -s -s neigh flush all 
# release and renew dhcp
udo dhclient -r && sudo dhclient