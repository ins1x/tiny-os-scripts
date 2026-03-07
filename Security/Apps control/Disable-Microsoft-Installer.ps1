# Script to restrict Standard users from installing apps
$path1 = 'HKLM:\SOFTWARE\Policies\Microsoft\Windows'
$path2 = 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Installer'
If (-NOT (Test-Path $path2)) {
    New-Item -Path $path1 -Name 'Installer'
    New-ItemProperty -Path $path2 -Name 'DisableMSI'  -Value 2 -PropertyType DWord
}  
If ((Get-Item -Path $path2).GetValue('DisableMSI') -ne '2') {
    New-ItemProperty -Path $path2 -Name 'DisableMSI'  -Value 2 -PropertyType DWord
} 