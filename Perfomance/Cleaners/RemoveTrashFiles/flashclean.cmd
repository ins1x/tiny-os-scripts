@echo off
rem Copy this script to your flash drive
rem Simple script to fast clean trash from flash drive
echo Show hidden folders
attrib -S -H /S /D
echo Deleting autorun inf file
if exists del /F /Q autorun.inf 
echo Deleting dummy links
del *.lnk /Q /F /S
echo Deleting nix trash folder
del .Trash-1000 /s /q
rmdir .Trash-1000 /S /Q

rem echo Deleting all executable files
rem del *.exe /Q /F /S
rem del *.js /Q /F /S

rem You will need download nicrmd.exe before
rem nircmd emptybin 
