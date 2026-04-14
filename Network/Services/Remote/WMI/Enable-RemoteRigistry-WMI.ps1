# Enable RemoteRegistry/WMI by changing status to Automatic startup type (required for Nessus, Manual works too)
Set-Service RemoteRegistry -StartupType Automatic -PassThru
Set-Service winmgmt -StartupType Automatic -PassThru
