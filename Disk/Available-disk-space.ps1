# Script to check available disk space on Windows
$disks = Get-WmiObject Win32_LogicalDisk -Filter "DriveType = 3" 
 
foreach ($disk in $disks) { 
    $freeSpace = "{0:N2}" -f ($disk.FreeSpace/1GB) 
    $totalSpace = "{0:N2}" -f ($disk.Size/1GB) 
    $usedSpace = "{0:N2}" -f ($totalSpace - $freeSpace) 
    $percentFree = "{0:N2}" -f (($freeSpace / $totalSpace) * 100) 
    Write-Host "Drive $($disk.DeviceID) has $freeSpace GB free of $totalSpace GB, $usedSpace GB used, $percentFree % free" 
}  