@echo off
rem c0de by Y0mO_o
echo Disable Google update services
sc delete gupdate
sc delete gupdatem
echo Suspend Google update processes
taskkill /F /IM GoogleUpdate*
taskkill /F /IM GoogleCrashHandler*
echo remove Google update
del /s /q /f "C:\Program Files\Google\Update\"
del /s /q /f "C:\Program Files (x86)\Google\Update\"
echo Enjoy!
pause