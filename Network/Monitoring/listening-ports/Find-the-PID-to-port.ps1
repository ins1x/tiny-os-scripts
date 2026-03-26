# Find the ID of the process that is listening on port 443
Get-NetTCPConnection -LocalPort 443 | Format-List