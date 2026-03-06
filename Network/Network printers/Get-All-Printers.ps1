# List ALL Printers using Powershell
Get-WMIObject Win32_Printer -ComputerName $env:COMPUTERNAME