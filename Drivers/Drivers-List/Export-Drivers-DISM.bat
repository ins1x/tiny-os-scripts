:: Backup Drivers using Command Prompt and DISM tool
IF EXIST "%CD%\DriversBackup" (
    echo Start backup
) ELSE (
    echo Not EXIST 
    mkdir "%CD%\DriversBackup"
    echo directory DriversBackup created
    dism /online /export-driver /destination:"%CD%\DriversBackup"
)
