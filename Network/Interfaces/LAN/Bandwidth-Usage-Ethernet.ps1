# Bandwidth Usage - track the number of bytes sent and received by your network adapters.
$before = Get-NetAdapterStatistics -Name "Ethernet"
Start-Sleep -Seconds 10
$after = Get-NetAdapterStatistics -Name "Ethernet"
$bytesReceived = $after.ReceivedBytes - $before.ReceivedBytes
$bytesSent = $after.SentBytes - $before.SentBytes
Write-Output "Bytes received: $bytesReceived"
Write-Output "Bytes sent: $bytesSent"