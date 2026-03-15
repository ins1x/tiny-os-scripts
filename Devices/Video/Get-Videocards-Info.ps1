# Get a list of video cards 
# Alternative method: mic path win32_VideoController get name 
Get-CimInstance Win32_VideoController | Select-Object Name, Caption, DriverVersion, AdapterRAM, Status
