# Set the maximum size technically allowed by the original 16-bit field in the TCP header
Set-NetTCPSetting -SettingName "Custom" -TcpReceiveWindow 65536