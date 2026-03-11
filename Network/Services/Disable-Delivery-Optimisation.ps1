# Disable Delivery Optimization
# Windows Update Delivery Optimization helps you get Windows updates and Microsoft Store apps more quickly and reliably.
Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Settings" -Name "DownloadMode" -Value 0 -Type DWord
Set-Service -Name "DoSvc" -StartupType Manual