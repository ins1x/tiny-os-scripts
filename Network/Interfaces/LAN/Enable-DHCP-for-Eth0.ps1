# Enable obtaining an IP address from DHCP for a network interface eth0
Set-NetIPInterface -InterfaceAlias Ethernet0 -Dhcp Enabled
Restart-NetAdapter -InterfaceAlias Ethernet0