# Find files modified the last 30 days in current directory 
$limit = (Get-Date).AddDays(-30)
Get-ChildItem -Path $PWD -Recurse | Where-Object { $_.LastWriteTime -ge $limit }