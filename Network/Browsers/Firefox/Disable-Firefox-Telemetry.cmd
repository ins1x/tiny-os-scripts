    :: Disabling Firefox telemetry
    reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox" /v "DisableTelemetry" /t REG_DWORD /d "1" /f
    reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox" /v "DisableDefaultBrowserAgent" /t REG_DWORD /d "1" /f