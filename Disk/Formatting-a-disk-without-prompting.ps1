# Formatting a disk using PowerShell without prompting for confirmation
$disk = Get-Disk | where-object PartitionStyle -eq "RAW"  
Initialize-Disk -Number $disk.Number -PartitionStyle MBR -confirm:$false  
New-Partition -DiskNumber $disk.Number -UseMaximumSize -IsActive | Format-Volume -FileSystem NTFS -NewFileSystemLabel "Local Disk" -confirm:$False  
Set-Partition -DiskNumber $disk.Number -PartitionNumber 1 -NewDriveLetter F  