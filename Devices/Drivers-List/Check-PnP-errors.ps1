# Check Kernel-PnP errors
Get-WinEvent -LogName System | where {$_.Id -in 219,411} | select TimeCreated,Id,Message