# Prioritizing video conferencing traffic for remote port 22 
New-NetTransportFilter -RemotePort 22 -SettingName "Priority" -SettingValue "High"