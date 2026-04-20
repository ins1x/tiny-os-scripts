:: To disable script execution for the current computer, run PowerShell as an Administrator
:: Restricted: This is the default policy for Windows client computers. 
:: It permits individual commands but does not allow any script files (.ps1) to run.
powershell -Command Set-ExecutionPolicy Restricted -Scope LocalMachine