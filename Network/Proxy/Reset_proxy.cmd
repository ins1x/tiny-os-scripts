@echo off
echo Resetting Winsock and WinHTTP Proxy... 
netsh winsock reset 
proxycfg.exe -d 
netsh winhttp reset proxy 