# Prevent Windows from auto-reassigning the default printer
REG ADD "HKCU\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Windows" -v LegacyDefaultPrinterMode /t REG_DWORD /d 1 /f 