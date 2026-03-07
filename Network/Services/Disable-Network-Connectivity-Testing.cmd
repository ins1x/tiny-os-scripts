rem Disable Microsoft Internet Connection Test
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\NetworkConnectivityStatusIndicator" /v "NoActiveProbe" /t "REG_DWORD" /d "1" /f