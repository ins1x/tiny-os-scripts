# Filter adapters based on their link speed (gigabit or faster connections)
Get-NetAdapter | Where-Object { $_.LinkSpeed -like "*Gbps*" }