# Set static ip address for interface eth0
Get-NetAdapter -Name Ethernet0 | New-NetIPAddress –IPAddress 192.168.1.64 -DefaultGateway 192.168.1.1 -PrefixLength 24