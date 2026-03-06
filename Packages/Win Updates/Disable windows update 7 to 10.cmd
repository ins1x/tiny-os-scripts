reg add "HKLM\Software\Policies\Microsoft\Windows\Gwx" /f /v "DisableGWx" /t REG_DWORD /d "1"

reg add "HKLM\Software\Policies\Microsoft\Windows\WindowsUpdate" /f /v "DisableOSUpgrade" /t REG_DWORD /d "1"

REG ADD HKLM\Software\Microsoft\Windows\CurrentVersion\WindowsUpdate\OSUpgrade /v ReservationsAllowed /t REG_DWORD /d 0 /f

REG ADD HKLM\Software\Microsoft\Windows\CurrentVersion\WindowsUpdate\OSUpgrade /v ReservationsAllowed /t REG_DWORD /d 0 /f

pause