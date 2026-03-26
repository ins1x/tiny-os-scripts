# Monitoring Open Ports for Traffic
Get-NetTCPConnection | Where-Object { $_.State -eq 'Listen' } | Format-Table LocalPort, LocalAddress