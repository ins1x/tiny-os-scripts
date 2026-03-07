# fetch the latest five entries from the System event log
Get-EventLog -LogName System -Newest 15 