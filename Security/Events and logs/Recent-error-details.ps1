# Script to fetch the recent error details on Windows
# Retrieve the error details on Windows for the present day 
$events = Get-WinEvent -FilterHashtable @{ 
    LogName = 'System','Application' 
    Level = 2                    
    StartTime = (Get-Date).Date 
}  | Sort-Object TimeCreated -Descending  
if ($events) { 
    $events | Select-Object TimeCreated, LevelDisplayName, ProviderName, ID, Message | Format-Table -AutoSize 
} else { 
    Write-Host "No recent errors found." 
} 