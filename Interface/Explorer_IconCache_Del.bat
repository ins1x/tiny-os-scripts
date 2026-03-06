taskkill /F /IM explorer.exe
del /F /S /Q /AH "%LOCALAPPDATA%\IconCache.db"
del /F /S /Q "%LOCALAPPDATA%\Microsoft\Windows\Explorer\*.*"
start explorer.exe