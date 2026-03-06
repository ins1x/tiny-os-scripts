rem Script to check available disk space on Windows
wmic logicaldisk get freespace          

@echo off 
SetLocal EnableDelayedExpansion 
set count=0 
for /F "delims=" %%a in ('wmic logicaldisk get freespace') do ( 
  set Zone=%%a 
  set /a count=!count! + 1 
  if !count! GTR 1 goto Exit 
) 
:Exit 
echo wsh.echo cdbl(%Zone%)/1073741824 > %temp%.\tmp.vbs 
  for /f %%a in ('cscript //nologo %temp%.\tmp.vbs') do set Zone=%%a 
  del %temp%.\tmp.vbs 
  echo Available Disk Space- %Zone% GB 