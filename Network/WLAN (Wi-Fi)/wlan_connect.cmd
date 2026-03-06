@echo off
Title Connect to WLAN
@REM -----------------------------------------------------------------------------------
@REM Setting the SSID Name variable here
Set "SSID=SDWLAN"
@REM -----------------------------------------------------------------------------------
@REM Testing the wlan is connected or no by piping it to findstr as a regular expression
@REM The following switches used here with findstr
@REM /I Case-insensitive search
@REM /R Evaluate as a regular expression.
@REM commandA && commandB || commandC
@REM If commandA succeeds run commandB, if commandA fails run commandC
@REM Note that if commandB fails, that will also trigger running commandC.
@REM -----------------------------------------------------------------------------------
netsh wlan show interface | findstr /I /R "%SSID%">nul && (
@REM -----------------------------------------------------------------------------------
@REM if this is true we show that we are connecting
@REM -----------------------------------------------------------------------------------
    Color 0A & echo You are connected to SSID:"%SSID%"
@REM -----------------------------------------------------------------------------------
@REM Else We try we connect to the SSID
@REM -----------------------------------------------------------------------------------
    ) || (
        netsh wlan connect name="%SSID%"
    )
@REM -----------------------------------------------------------------------------------
@REM Timeout to wait 3 seconds to show the message and exit the batch script
@REM -----------------------------------------------------------------------------------
Timeout /T 3 /NoBreak>nul & Exit /B
@REM -----------------------------------------------------------------------------------