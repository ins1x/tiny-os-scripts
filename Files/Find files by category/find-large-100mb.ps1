# Find files larger than 100MB
Get-ChildItem -Path $PWD -File -Recurse | Where-Object { $_.Length -gt 100MB }
