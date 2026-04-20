:: Disable Windows Script Host
:: Windows Script Host (WSH) runs .vbs and .js files (wscript.exe/cscript.exe). 
:: If you don’t need scripts, disabling WSH reduces common USB‑borne attacks.
reg add "HKLMSoftwareMicrosoftWindows Script HostSettings" /v Enabled /t REG_DWORD /d 0 /f
:: Per‑user (current user):
:: reg add "HKCUSoftwareMicrosoftWindows Script HostSettings" /v Enabled /t REG_DWORD /d 0 /f