# Check status of WMI and RemoteRegistry
Get-Service RemoteRegistry,Winmgmt | Select-Object -Property Name, StartType, Status
