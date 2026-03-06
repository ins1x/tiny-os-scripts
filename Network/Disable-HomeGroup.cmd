rem Prevent the computer from joining a homegroup
rem This policy setting specifies whether users can add computers to a homegroup. By default, users can add their computer to a homegroup on a private network.

reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\HomeGroup" /v "DisableHomeGroup" /t "REG_DWORD" /d "1" /f