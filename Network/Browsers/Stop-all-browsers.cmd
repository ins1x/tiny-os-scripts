@echo off 
echo This Batch (.bat) file will terminate all running Internet Browser processes. This file is useful if you have hanging or zombie processes remaining after your browsing sessions.

echo STOP Google Chrome Services
for /f "tokens=1 delims=" %%# in ('qprocess^|find /i /c /n "chrome"') do ( 
    set count=%%# 
) 

taskkill /F /IM chrome.exe /T 
 
echo Number of Google Chrome processes stopped: %count% 

echo STOP Microsoft Edge Services
for /f "tokens=1 delims=" %%# in ('qprocess^|find /i /c /n "MicrosoftEdg"') do ( 
    set count=%%# 
) 
 
taskkill /F /IM MicrosoftEdge.exe /T 
 
echo Number of Microsoft Edge processes stopped: %count% 

echo STOP Opera Services
for /f "tokens=1 delims=" %%# in ('qprocess^|find /i /c /n "opera"') do ( 
    set count=%%# 
) 
 
taskkill /F /IM opera.exe /T 
 
echo Number of Opera processes stopped: %count% 

echo STOP Mozilla Firefox Services
for /f "tokens=1 delims=" %%# in ('qprocess^|find /i /c /n "firefox"') do ( 
    set count=%%# 
) 
 
taskkill /F /IM firefox.exe /T 
 
echo Number of Mozilla Firefox processes stopped: %count% 

echo STOP IE Services 
for /f "tokens=1 delims=" %%# in ('qprocess^|find /i /c /n "iexplore"') do ( 
    set count=%%# 
) 
 
taskkill /F /IM iexplore.exe /T 
 
echo Number of Internet Explorer processes stopped: %count% 

echo All Done
pause