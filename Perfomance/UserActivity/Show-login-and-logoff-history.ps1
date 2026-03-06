# List login history
# Script to fetch login history on Windows devices
#
# List logins
# Get-WinEvent -FilterHashtable @{LogName="Security";ID=4648} -MaxEvents <count> | Format-Table -Wrap 
# List Logoff
# Get-WinEvent -FilterHashtable @{LogName="Security";ID=4647} -MaxEvents <count> | Format-Table -Wrap 

auditpol /set /subcategory:"Logon" /success:enable /failure:enable 

auditpol /set /subcategory:"Logoff" /success:enable /failure:enable 

$string1 = "auditpol /set /subcategory:`"Logon`" /success:enable /failure:enable 

auditpol /set /subcategory:`"Logoff`" /success:enable /failure:enable" 

$path1 = "C:\hexnode\user_logs.bat" 


if (-NOT (Test-Path -Path $path1))  

{Add-Content C:\hexnode\user_logs.bat$string1} 


$SourceFilePath = "C:\hexnode\user_logs.bat" 

$ShortcutPath = "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp\" 

$path2 = "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp\user_logs.bat" 

  
if (-NOT (Test-Path -Path $path2))  

{Copy-Item $SourceFilePath $ShortcutPath} 