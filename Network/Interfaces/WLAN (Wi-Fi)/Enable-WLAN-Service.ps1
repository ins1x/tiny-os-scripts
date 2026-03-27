# Installing the Wireless LAN Service component
Install-WindowsFeature -Name Wireless-Networking
Set-Service WlanSvc –startuptype automatic –passthru
Start-Service WlanSvc –PassThru