# Disabling Explorer Automatic Folder Discovery
$bags = "HKCU:\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\Bags"
$bagMRU = "HKCU:\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU"
Remove-Item -Path $bags -Recurse -Force
Remove-Item -Path $bagMRU -Recurse -Force
$allFolders = "HKCU:\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\Bags\AllFolders\Shell"
New-Item -Path $allFolders -Force
New-ItemProperty -Path $allFolders -Name "FolderType" -Value "NotSpecified" -PropertyType String -Force