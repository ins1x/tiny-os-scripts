# Disable Connected Standby
Set-ItemProperty -Path "HKLM:\System\CurrentControlSet\Control\Power" -Name "EnforceDisconnectedStandby" -Value 0 -Type DWord
powercfg /setacvalueindex scheme_current sub_none connectivityinstandby 0
powercfg /s scheme_current