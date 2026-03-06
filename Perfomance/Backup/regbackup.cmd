rem Backing up registry using batch
@echo off
setlocal
for %%k in (lm cu cr u cc) do call :ExpReg %%k
goto :eof
:ExpReg
reg.exe export hk%1 hk%1.reg > nul
if "%errorlevel%"=="1" (
  echo ^>^> Export --hk%1-- Failed.
) else (
  echo ^>^> Export --hk%1-- Fine.
)
goto :eof
endlocal