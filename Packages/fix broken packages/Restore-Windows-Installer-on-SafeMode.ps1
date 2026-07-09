# Allow the MSIServer (Windows Installer) service to start in safe mode
# https://winitpro.ru/index.php/2026/07/06/ne-udalos-zapustit-sluzbu-windows-installer/#h2_3
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\SafeBoot\Network\MSIServer" /VE /T REG_SZ /F /D "Service"
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\SafeBoot\Minimal\MSIServer" /VE /T REG_SZ /F /D "Service"
net start msiserver