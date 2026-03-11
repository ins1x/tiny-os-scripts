# Enable SMBv2
Set-SmbServerConfiguration -EnableSMB2Protocol $true -Confirm:$false
Set-ItemProperty -Path "HKLM:\System\CurrentControlSet\Services\LanmanServer\Parameters" -Name "SMB2" -Value 1 -Type DWord