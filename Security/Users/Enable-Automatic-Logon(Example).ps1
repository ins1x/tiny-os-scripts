# Script to enable Windows automatic logon for screenless kiosk
# Designed to simplify the specific user account login and power settings on a Windows system. 
# Replace Username and Password with the actual username and password of the kiosk user account whose login needs to be automated.
$Username = "Username" 
$Password = "Password" 
$RegPath = "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" 
Set-ItemProperty -Path $RegPath -Name "AutoAdminLogon" -Value 1 
Set-ItemProperty -Path $RegPath -Name "DefaultUsername" -Value $Username 
Set-ItemProperty -Path $RegPath -Name "DefaultPassword" -Value $Password 
New-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Authentication\LogonUI" -Name "LogonUserSwitch" -Value 0 -Force 
powercfg -change -monitor-timeout-ac 0 
powercfg -change -monitor-timeout-dc 0 
powercfg -change -standby-timeout-ac 0 
powercfg -change -standby-timeout-dc 0 
Restart-Computer -Force