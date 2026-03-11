# Disable NetBIOS Over TCP/IP (NBNS)
Set-ItemProperty -Path "HKLM:\System\CurrentControlSet\Services\NetBT\Parameters\Interfaces" -Name "NetBiosOptions" -Value 2 -Type DWord
(Get-WmiObject Win32_NetworkAdapterConfiguration -Filter "IPEnabled=True").SetTcpipNetbios(2) | Out-Null
Set-ItemProperty -Path "HKLM:\System\CurrentControlSet\Services\NetBT\Parameters" -Name "NodeType" -Value 2 -Type DWord