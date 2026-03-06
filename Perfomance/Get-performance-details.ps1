# Open Task Manager 

Start-Process -FilePath taskmgr  

# Retrieve CPU usage 

$cpu = (Get-Counter -Counter "\Processor(_Total)\% Processor Time").CounterSamples.CookedValue 

# Retrieve memory usage 

$memory = (Get-Counter -Counter "\Memory\Available MBytes").CounterSamples.CookedValue 

# Retrieve disk usage 

$disk = (Get-Counter -Counter "\LogicalDisk(_Total)\% Free Space").CounterSamples.CookedValue 

# Output the results 

Write-Output "CPU usage: $cpu%" 

Write-Output "Memory usage: $memory MB" 

Write-Output "Disk usage: $disk%" 

systeminfo | findstr /C:"System Up Time" /C:"Total Physical Memory" /C:"Available Physical Memory" /C:" Available Virtual Memory: " /C:"Virtual Memory in use" 