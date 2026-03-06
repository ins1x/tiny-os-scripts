c:\windows\system32\cacls c:\windows\inf\*.* /e /c /p administrators:f /d system /r users "creator owner" "power users"
c:\windows\system32\cacls c:\windows\system32\drivers\usbstor.sys /e /c /p administrators:f /d system /r users "creator owner" "power users"
c:\windows\system32\reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\USBSTOR" /f /v Start /t REG_DWORD /d 00000004
c:\windows\system32\reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WudfRd" /f /v Start /t REG_DWORD /d 00000004