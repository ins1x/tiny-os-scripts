# Disable Logitech Gaming service
Stop-Service "LogiRegistryService"
Set-Service "LogiRegistryService" -StartupType Disabled