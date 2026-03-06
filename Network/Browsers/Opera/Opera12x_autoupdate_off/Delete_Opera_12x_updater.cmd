@echo off
echo Delete Opera 12.x updater
echo Check Opera destination
if exist "C:\Program files\Opera\updatechecker\opera_autoupdate.exe" goto REMOVE

:REMOVE
del /f /s /q "C:\Program files\Opera\updatechecker"
echo Done!

pause