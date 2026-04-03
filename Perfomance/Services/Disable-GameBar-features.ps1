        # Disable Game Bar features
        Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\GameDVR" -Name AllowgameDVR -Type "DWORD" -Value 0 -Force
        Set-ItemProperty -Path "HKCU:\System\GameConfigStore" -Name GameDVR_Enabled -Type "DWORD" -Value 0 -Force
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\GameDVR" -Name AppCaptureEnabled -Type "DWORD" -Value 0 -Force
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\GameDVR" -Name  HistoricalCaptureEnabled -Type "DWORD" -Value 0 -Force