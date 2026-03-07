# Get information about all volumes on the computer 
$volumeInfo = Get-Volume 
 
# Output volume information line by line 
$volumeInfo | ForEach-Object { 
    $sizeGB = [math]::Round(($_.Size / 1GB), 2) 
    $sizeRemainingGB = [math]::Round(($_.SizeRemaining / 1GB), 2) 
    $sizeUsedGB = $sizeGB - $sizeRemainingGB 
 
    Write-Output "DriveLetter: $($_.DriveLetter)" 
    Write-Output "FriendlyName: $($_.FriendlyName)" 
    Write-Output "FileSystemType: $($_.FileSystemType)" 
    Write-Output "DriveType: $($_.DriveType)" 
    Write-Output "HealthStatus: $($_.HealthStatus)" 
    Write-Output "OperationalStatus: $($_.OperationalStatus)" 
    Write-Output "Size: $sizeGB GB" 
    Write-Output "SizeUsed: $sizeUsedGB GB" 
    Write-Output "SizeRemaining: $sizeRemainingGB GB" 
    Write-Output "" 
} 