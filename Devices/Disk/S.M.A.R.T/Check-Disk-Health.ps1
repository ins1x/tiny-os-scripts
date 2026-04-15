# Quick status check (Windows 10/11) this will show if the drive is healthy.
Get-PhysicalDisk | Select-Object FriendlyName, OperationalStatus, HealthStatus