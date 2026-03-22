# Display the default route for a physical network interface
Get-NetAdapter -Physical | ? {$_.Status -eq "Up"}| Get-netroute| where DestinationPrefix -eq "0.0.0.0/0"