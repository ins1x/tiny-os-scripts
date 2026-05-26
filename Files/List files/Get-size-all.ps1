# List files size in current directory 
Get-ChildItem -File | Select-Object Name, @{Name="Size(MB)"; Expression={$_.Length / 1MB}}