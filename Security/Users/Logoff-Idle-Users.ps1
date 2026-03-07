# Get the current session ID 
$currentSessionId = (Get-WmiObject -Class Win32_ComputerSystem).UserName -split "\\" | Select-Object -Last 1 
 
# Get the list of sessions 
$sessions = quser 
 
# Loop through each session 
foreach ($session in $sessions) { 
    $sessionInfo = $session -split "\s+" 
    $sessionId = $sessionInfo[2] 
    $sessionState = $sessionInfo[3] 
 
# Check if the session is idle and not the current session 
    if ($sessionState -eq "Disc" -and $sessionId -ne $currentSessionId) { 
        # Log off the idle session 
        logoff $sessionId 
    } 
} 