# Enable Winsock/HTTP Autotuning
# This feature adjusts network buffers to match current network conditions, optimizing speed for applications
netsh winsock set autotuning on | Out-Null
$httpSettings = @(
    @{Path="HKLM:\Software\Microsoft\Windows\CurrentVersion\Internet Settings\WinHttp"; Name="TcpAutotuning"},
    @{Path="HKLM:\Software\Microsoft\Windows\CurrentVersion\Internet Settings"; Name="TcpAutotuning"}
)
foreach ($setting in $httpSettings) {
    Set-ItemProperty -Path $setting.Path -Name $setting.Name -Value 1 -Type DWord
}