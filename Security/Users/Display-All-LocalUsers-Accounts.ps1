# List all enabled local user accounts 
try {
    $users = Get-LocalUser | Where-Object { $_.Enabled -eq $true -and $_.PrincipalSource -eq 'Local' }
 
    if ($users) {  
        Write-Output "Local user accounts:"  
        foreach ($u in $users) { 
            Write-Output $u.Name  
        }  
    } else {  
        Write-Output "No enabled local user accounts found."  
    } 
} catch {
    Write-Error "An error occurred: $($_.Exception.Message)"
}