# Disable Razer Game Scanner service
Stop-Service "Razer Game Scanner Service"
Set-Service "Razer Game Scanner Service" -StartupType Disabled