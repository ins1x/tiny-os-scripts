rem Script to clear cache and temporary files on Windows devices
@echo off  

echo is clearing system junk files, please wait...  

del /f /s /q %windir%\prefetch\*.* & rd /s /q %windir%\temp & md %windir%\temp  

echo clear system garbage is complete! 