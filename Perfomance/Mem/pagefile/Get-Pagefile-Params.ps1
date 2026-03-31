# Displays pagefile current configuration, including size and location
Get-WmiObject Win32_PageFileSetting | Select-Object Name, InitialSize, MaximumSize
