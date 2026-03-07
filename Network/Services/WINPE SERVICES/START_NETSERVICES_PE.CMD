@ECHO OFF
color f0
cls
ECHO Regiter netcfgx.dll
regsvr32 /s netcfgx.dll

ECHO Installing PnP devices...
bartpe -pnp
bartpe -cn WinXPE -wg HOME>NUL 2>&1

ECHO Installing network services...
bartpe -q MS_TCPIP||(bartpe -c p -i MS_TCPIP&ECHO Installing MS_TCPIP)
bartpe -q MS_MSCLIENT||(bartpe -c c -i MS_MSCLIENT&ECHO Installing MS_MSCLIENT)
bartpe -q MS_RasSrv||(bartpe -c s -i MS_RasSrv&ECHO Installing MS_RasSrv)
bartpe -q MS_RasCli||(bartpe -c s -i MS_RasCli&ECHO Installing MS_RasCli)
FOR /F "TOKENS=2 DELIMS={" %%i IN ('REG QUERY HKLM\SYSTEM\ControlSet001\Services\Tcpip\Parameters\Adapters^|FIND "{"') DO REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Network\{4D36E972-E325-11CE-BFC1-08002BE10318}\{%%i\Connection" /V ShowIcon /T REG_DWORD /D 1 /F>nul 2>&1
bartpe -q MS_SERVER||(bartpe -c s -i MS_SERVER&ECHO Installing MS_SERVER)
bartpe -q MS_WZCSVC||(bartpe -c s -i MS_WZCSVC&ECHO Installing MS_WZCSVC)
bartpe -q MS_WANARP||(bartpe -c p -i MS_WANARP&ECHO Installing MS_WANARP)
bartpe -q MS_NDISUIO||(bartpe -c p -i MS_NDISUIO&ECHO Installing MS_NDISUIO)
bartpe -q MS_WebClient||(bartpe -c c -i MS_WebClient&ECHO Installing MS_WebClient)
bartpe -q MS_ALG||(bartpe -c s -i MS_ALG&ECHO Installing MS_ALG)
bartpe -q MS_Bridge||(bartpe -c p -i MS_Bridge&ECHO Installing MS_Bridge)
bartpe -q MS_gpc||(bartpe -c s -i MS_gpc&ECHO Installing MS_gpc)
bartpe -q MS_ATMEPVCP||(bartpe -c p -i MS_ATMEPVCP&ECHO Installing MS_ATMEPVCP)
bartpe -q MS_IRDA||(bartpe -c p -i MS_IRDA&ECHO Installing MS_IRDA)

ECHO Starting network services...
NET START DHCP
NET START LMHOSTS
NET START SERVER
NET START TAPISRV
NET START RASMAN
NET START WZCSVC
NET START SHAREDACCESS

IF NOT EXIST "%ALLUSERSPROFILE%\Application Data\Microsoft\Network\Connections\Pbk" (
ECHO Create phonebook entry...
MD "%ALLUSERSPROFILE%\Application Data\Microsoft\Network\Connections\Pbk"
)

ECHO Registering needed network library...
regsvr32 /s hnetwiz.dll
regsvr32 /s netplwiz.dll
regsvr32 /s twext.dll
regsvr32 /s polstore.dll
regsvr32 /s ipsecsnp.dll
COLOR
IF EXIST "%USERPROFILE%\Главное меню\Установка сети.lnk" DEL /Q /F "%USERPROFILE%\Главное меню\Установка сети.lnk"
EXIT 0
