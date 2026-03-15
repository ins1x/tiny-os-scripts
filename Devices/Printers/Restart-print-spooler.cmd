net stop spooler
timeout /t 5 /nobreak >nul
net start spooler
echo Print Spooler restarted successfully.