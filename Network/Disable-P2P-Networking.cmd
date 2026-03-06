rem Turn off Microsoft Peer-to-Peer Networking Services
rem This setting turns off Microsoft Peer-to-Peer Networking Services in its entirety, and will cause all dependent applications to stop working.
rem Peer-to-Peer protocols allow for applications in the areas of RTC, collaboration, content distribution and distributed processing.

rem If you enable this setting, peer-to-peer protocols will be turned off.
rem If you disable this setting or do not configure it, the peer-to-peer protocols will be turned on.
reg add "HKLM\SOFTWARE\Policies\Microsoft\Peernet" /v "Disabled" /t "REG_DWORD" /d "1" /f