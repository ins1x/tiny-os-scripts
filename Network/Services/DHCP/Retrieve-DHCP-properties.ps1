# Retrieve DHCP properties
Get-CimInstance -Class Win32_NetworkAdapterConfiguration -Filter "IPEnabled=$true and DHCPEnabled=$true" | Format-Table -Property DHCP*