:: Restart essential network services
sc config Dhcp start= auto >nul 2>&1
sc config DPS start= auto >nul 2>&1
sc config lmhosts start= auto >nul 2>&1
sc config NlaSvc start= auto >nul 2>&1
sc config nsi start= auto >nul 2>&1
sc config RmSvc start= auto >nul 2>&1
sc config Wcmsvc start= auto >nul 2>&1
sc config WdiServiceHost start= demand >nul 2>&1
sc config Winmgmt start= auto >nul 2>&1
sc config NcbService start= demand >nul 2>&1
sc config ndu start= demand >nul 2>&1
sc config Netman start= demand >nul 2>&1
sc config netprofm start= demand >nul 2>&1
sc config WlanSvc start= auto >nul 2>&1
sc config WwanSvc start= demand >nul 2>&1

:: Start required services
net start DPS >nul 2>&1
net start nsi >nul 2>&1
net start NlaSvc >nul 2>&1
net start Dhcp >nul 2>&1
net start Wcmsvc >nul 2>&1
net start RmSvc >nul 2>&1 