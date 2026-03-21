# IPv4 Maximum Transmission Unit (MTU)
$mtu=1500; Get-NetIPInterface|Set-NetIPInterface -NlMtuBytes $mtu -AddressFamily IPv4
do { $ping=ping 8.8.8.8 -f -n 1 -4 -l $mtu -w 750; $mtu-- } while($ping -match 'fragmented')
$mtu++; if($ping -match 'fragmented' -or $mtu -ge 1472){ $mtu=1500 }
Get-NetIPInterface|Set-NetIPInterface -NlMtuBytes $mtu -AddressFamily IPv4
Write-Host "Set IPv4 MTU to $mtu"