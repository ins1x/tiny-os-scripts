# List installation and removal events for MSI packages, Microsoft Store apps, and updates installed via Windows Update over the last 7 days.
$DaysAgo = (Get-Date).AddDays(-7)
$RealiabilityFilter= "TimeGenerated > '$DaysAgo' and (SourceName='Microsoft-Windows-WindowsUpdateClient' or SourceName='MsiInstaller')"
Get-CimInstance -ClassName Win32_ReliabilityRecords -filter $RealiabilityFilter|Select TimeGenerated,ProductName,User,message |Out-GridView