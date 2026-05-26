# Find the most recently modified files in a directory (top 10)
Get-ChildItem -Path $PWD -File | Sort-Object LastWriteTime -Descending | Select-Object -First 10