$Path = $env:TEMP;  

$Installerchrome = "GoogleChromeInstaller.exe";  
(new-object System.Net.WebClient).DownloadFile('http://dl.google.com/chrome/install/375.126/chrome_installer.exe', "$Path\$Installerchrome"); 
& "$Path\$Installerchrome" /silent /install; 
$ProcesstoMonitor = "GoogleChromeInstaller"; 

Do  
{ $ProcessFound = Get-Process | ?{$ProcesstoMonitor -contains $_.Name} | Select-Object -ExpandProperty Name;  
If ($ProcessFound) { "Still running: $($ProcessFound -join ', ')" | Write-Host; Start-Sleep -Seconds 2 }  
else  
{ rm "$Path\$Installerchrome" -ErrorAction SilentlyContinue -Verbose } }  
Until (!$ProcessFound) 