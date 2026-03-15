:: Disable UAC on your computer (requires a restart) UAC Level 4: Never notify (Disabled)
:: Don't recommended completely disabling UAC in Windows. It's not secure!
reg ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v EnableLUA /t REG_DWORD /d 0 /f