# IPv6 Maximum Transmission Unit (MTU)
$mtu=1500; Get-NetIPInterface|Set-NetIPInterface -NlMtuBytes $mtu -AddressFamily IPv6
do { $ping=ping 2001:4860:4860::8888 -n 1 -6 -l $mtu -w 750; $mtu-- } while($ping -match 'too big')
$mtu++; if($ping -match 'too big' -or $mtu -ge 1452){$mtu=1500}
Get-NetIPInterface|Set-NetIPInterface -NlMtuBytes $mtu -AddressFamily IPv6
Write-Host "Set IPv6 MTU to $mtu"