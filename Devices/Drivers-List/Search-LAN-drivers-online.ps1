$motherboard = Get-WmiObject Win32_BaseBoard | Select-Object -ExpandProperty Product
$searchUrl = "https://www.google.com/search?q=$motherboard"
Start-Process $searchUrl