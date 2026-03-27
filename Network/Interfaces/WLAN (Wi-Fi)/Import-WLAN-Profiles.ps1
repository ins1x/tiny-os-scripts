# Import all WLAN profiles from the current directory
Get-ChildItem $PWD | foreach {$fname=$_.Fullname;netsh.exe wlan add profile filename=$fname}