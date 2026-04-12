# Identify the processes with highest CPU (Top-10)
Get-Process | Sort-Object CPU -desc |
Select-Object -first 10 |fl Name,CPU,Id,Handles,WS,VM,NPM,PM