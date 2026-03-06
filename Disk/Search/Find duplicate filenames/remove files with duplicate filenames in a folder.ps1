Get-ChildItem FolderPath –File .\* -include ('*.Fileformat1’, '*.Fileformat2') -Recurse | where {$_.Name -match 'Name of the file / Snippet from the name of the file'} | 
select Name, FullName, @{n='Identificator';e={"$(($_.Name -split '-')[0])"}} | 
Group-Object Identificator | foreach { 
write-host "Working with group '$($_.Name)'"  
write-host "Files in the group:" 
$_.Group.FullName 
Write-Host "Files deleted:"  
$_.Group.FullName | Sort-Object | Select-Object -SkipLast 1 
$_.Group.FullName | Sort-Object | Select-Object -SkipLast 1 | Remove-Item
Write-Host " " 
} 