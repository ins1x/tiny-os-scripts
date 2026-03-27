:: Increases the priority of IPv4 over IPv6 in the prefix table
reg add HKLM\system\currentcontrolset\services\tcpip6\parameters /v DisabledComponents /t REG_DWORD /d 0x20 