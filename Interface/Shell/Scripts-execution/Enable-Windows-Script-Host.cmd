:: Enable Windows Script Host
:: Windows Script Host (WSH) runs .vbs and .js files (wscript.exe/cscript.exe). 
reg add "HKLMSoftwareMicrosoftWindows Script HostSettings" /v Enabled /t REG_DWORD /d 1 /f
:: Per‑user:
:: reg add "HKCUSoftwareMicrosoftWindows Script HostSettings" /v Enabled /t REG_DWORD /d 1 /f