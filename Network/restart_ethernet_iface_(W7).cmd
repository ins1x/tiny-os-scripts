@ECHO OFF
:: Check command line
IF NOT "%~2"=="" GOTO Syntax
SET Delay=5
IF NOT "%~1"=="" SET /A Delay=%1
IF %Delay% LSS 5 (ECHO. & ECHO ERROR: Delay must be in 5..120 seconds range & GOTO Syntax)
IF %Delay% GTR 120 (ECHO. & ECHO ERROR: Delay must be in 5..120 seconds range & GOTO Syntax)
:: Check for elevated privileges
OPENFILES.EXE >NUL 2>&1 || (ECHO. & ECHO ERROR: This batch file requires elevated privileges & GOTO Syntax)

:: Show current IP address
IPCONFIG.EXE
:: Disable Ethernet network adapter
NETSH.EXE Interface Set Interface name=Ethernet admin=DISABLED
:: Wait
TIMEOUT.EXE %Delay% /NoBreak
:: Enable Ethernet network adapter
NETSH.EXE Interface Set Interface name=Ethernet admin=ENABLED
:: Wait
TIMEOUT.EXE %Delay% /NoBreak
:: Renew and show new IP address
IPCONFIG.EXE /Renew
SET Delay=
GOTO:EOF


:Syntax
SET Delay=
ECHO.
ECHO Restart_Ethernet.cmd, Version 1.01
ECHO Restart Ethernet network adapter
ECHO.
ECHO Usage:  Restart_Ethernet.cmd  [ delay ]
ECHO.
ECHO Where:  delay   is the time in seconds to wait between disabling/enabling
ECHO                 the network adapter and checking its new status
ECHO                 ^(range: 5..120 seconds; default: 5 seconds^)
ECHO.
ECHO The batch file will disable the local Ethernet network adapter, wait for a
ECHO number of seconds seconds, and then reenable the Ethernet network adapter.
ECHO Elevated privileges are required.
ECHO.
ECHO Written by Rob van der Woude
ECHO https://www.robvanderwoude.com/
EXIT /B 1
