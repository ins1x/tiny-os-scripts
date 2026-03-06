@echo off
echo TEST Beltelecom Internet Connection.
SET outputDirectory = "%CD%\results"
IF NOT EXIST outputDirectory mkdir "%CD%\results"
echo.0 TIME
time /t >> %outputDirectory%\CONFIG.txt 2>&1
echo 1. PING MODEM  WAIT...
ping 192.168.1.1 -n 5>>%outputDirectory%\PING.txt 2>&1
ping 192.168.100.1 -n 5>>%outputDirectory%\PING.txt 2>&1
echo 2. PING DNS  WAIT...
ping 82.209.240.241 -n 10>>%outputDirectory%\PING.txt 2>&1
echo 3. PING BELTELECOM.BY  WAIT...
ping beltelecom.by -n 10>>%outputDirectory%\PING.txt 2>&1
echo 4. PING GOOGLE DNS  WAIT...
ping 8.8.8.8 -n 10>>%outputDirectory%\PING.txt 2>&1
echo 5. PATHPING BELTELECOM.BY WAIT...
pathping beltelecom.by>>%outputDirectory%\PATHPING.txt 2>&1
echo 6. PATHPING GOOGLE DNS WAIT...
pathping 8.8.8.8>>%outputDirectory%\PATHPING.txt 2>&1
echo 7. IPCONFIG/ALL AND FLUSHDNS WAIT...
ipconfig /all>>%outputDirectory%\CONFIG.txt 2>&1
ipconfig /flushdns
echo 8. NSLOOKUP BYFLY.BY
nslookup byfly.by >> %outputDirectory%\CONFIG.txt 2>&1
echo 9. CHECK NETSTAT
netstat -b >> %outputDirectory%\CONFIG.txt 2>&1
echo READY!!!
pause
exit