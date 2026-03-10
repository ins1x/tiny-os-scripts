@echo off
setlocal enabledelayedexpansion

::Batch script to compare a file SHA256 checksum to a given one.
::Usage: checksum [FILE] [VALUE]

set filepath=%1
set checksum=%2
set idx=0

for /f %%F in ('certutil -hashfile %filepath% SHA256') do (
    set "out!idx!=%%F"
    set /a idx += 1
)
set filechecksum=%out1%

if /i %checksum%==%filechecksum% (
    echo %checksum% validated.
) else (
    echo Checksum validation falied.
    exit 1
)