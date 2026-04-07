# Retransmit TimeOut (RTO) – set how long unacknowledged packets will circulate through 
# the network before the connection is terminated. Default 3s (3000)ms
# Set Retransmit TimeOut (RTO) to 2 ms
netsh int tcp set global initialRto=2000
Set-NetTCPSetting -SettingName InternetCustom -MinRto 300"