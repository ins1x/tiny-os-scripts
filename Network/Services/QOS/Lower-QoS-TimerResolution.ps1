# Lower QoS TimerResolution
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\Psched" -Name "TimerResolution" -Value 1 -Type DWord