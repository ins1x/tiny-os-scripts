# script to fetch the last logged on user on the Windows machine
Get-WinEvent -LogName Security -MaxEvents 2000 |
  Where-Object {
      $_.Id -eq 4624 -and
      ($_.Properties[8].Value -eq 2 -or $_.Properties[8].Value -eq 10) -and
      $_.Properties[5].Value -notmatch 'SYSTEM|LOCAL SERVICE|NETWORK SERVICE|DWM-'
  } |
  Select-Object @{Name='TimeCreated';Expression={$_.TimeCreated}},
                @{Name='User';Expression={$_.Properties[5].Value}} |
  Sort-Object TimeCreated -Descending |
  Select-Object -First 1 |
  Write-Output 