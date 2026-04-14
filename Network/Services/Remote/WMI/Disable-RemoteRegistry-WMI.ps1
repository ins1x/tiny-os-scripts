# Disable RemoteRegistry/WMI (careful - other services might rely on these, take note of current settings and ensure you set them back the way they were to ensure nothing breaks)
Set-Service RemoteRegistry -StartupType Disabled -PassThru
Set-Service winmgmt -StartupType Disabled -PassThru
