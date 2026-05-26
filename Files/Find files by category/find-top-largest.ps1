# Find top 10 largest files in a directory.
Get-ChildItem -Path $PWD -File -Recurse -ErrorAction SilentlyContinue | 
Sort-Object Length -Descending | 
Select-Object Name, @{Name="Size(GB)"; Expression={"{0:N2}" -f ($_.Length / 1GB)}} -First 10