# Script to Get HotFix info on Windows devices

Param( 
[string]$HotFixID, 
[string]$Description, 
[datetime]$StartDate 
) 
 
$hotfixes = Get-Hotfix 

if($HotFixID){
$hotfixes = $hotfixes | Where-Object {$_.HotFixID -like "*$HotFixID*"} 
} 
 
if($Description){
$hotfixes = $hotfixes | Where-Object{$_.Description -like "*Description*"} 
} 
 
if($StartDate){
$hotfixes = $hotfixes | Where-Object{$_.InstalledOn -ge $StartDate} 
} 
 
$hotfixes | Format-Table -Property Description, HotFixID, InstalledOn 