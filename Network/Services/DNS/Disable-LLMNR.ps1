# Disable Link-Local Multicast Name Resolution (LLMNR) protocol
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows NT\DNSClient" -Name "EnableMulticast" -Value 0 -Type DWord