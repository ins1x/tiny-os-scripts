# Check detailed write errors counters and temperature.
Get-PhysicalDisk | Get-StorageReliabilityCounter | Select-Object DeviceId, ReadErrorsTotal, WriteErrorsTotal, Temperature