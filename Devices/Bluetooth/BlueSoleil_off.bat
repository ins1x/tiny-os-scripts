rem Скрипт завершения работы программы IVT BlueSoleil и выгрузки её процессов из оперативной памяти
cd C:\windows\system32   
TASKKILL /F /t /IM BlueSoleil.exe   
TASKKILL /F /t /IM BlueSoleilCS.exe   
TASKKILL /F /t /IM BsHelpCS.exe   
TASKKILL /F /t /IM BsMobileCS.exe   
TASKKILL /F /t /IM BtTray.exe   
exit