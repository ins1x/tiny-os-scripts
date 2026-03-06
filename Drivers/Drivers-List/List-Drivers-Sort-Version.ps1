# get drivers version via command line Windows
Get-WmiObject Win32_PnPSignedDriver | select devicename, driverversion