:: Disabling Chrome telemetry and cleanup
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "ChromeCleanupEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "ChromeCleanupReportingEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "MetricsReportingEnabled" /t REG_DWORD /d "0" /f 
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "UserFeedbackAllowed" /t REG_DWORD /d "0" /f