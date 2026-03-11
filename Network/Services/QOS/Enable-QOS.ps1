# Enable QoS Policies on Home Computers
Set-ItemProperty -Path "HKLM:\System\CurrentControlSet\Services\Tcpip\QoS" -Name "Do not use NLA" -Value "1" -Type String
