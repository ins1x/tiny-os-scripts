# Set TTL (Time To Live) to 64
Get-NetIPInterface | Set-NetIPInterface -CurrentHopLimit 64
Write-Host "Set Time To Live (TTL) To 64"