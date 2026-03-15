# show all Bluetooth devices currently connected 
# Get the list of connected Bluetooth devices 
$bluetoothDevices = Get-WmiObject -Query "SELECT * FROM Win32_PnPEntity WHERE PNPClass = 'Bluetooth'" | Select-Object Name 
# Display the list of Bluetooth devices 
foreach ($device in $bluetoothDevices) { 
    Write-Host "Bluetooth Device: $($device.Name)" 
} 