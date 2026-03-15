@ECHO OFF
CLS
TITLE .:: Save Harwdware IDs ::.

SET Out="HWIDs.txt"
IF EXIST %Out% DEL /Q %Out%

ECHO =========== >> %Out%
ECHO PCI Devices >> %Out%
ECHO =========== >> %Out%
DEVCON find pci* >> %Out%
ECHO. >> %Out%

ECHO =========== >> %Out%
ECHO NET Devices >> %Out%
ECHO =========== >> %Out%
DEVCON find =net >> %Out%
ECHO. >> %Out%

ECHO ========= >> %Out%
ECHO HDA Audio >> %Out%
ECHO ========= >> %Out%
DEVCON find hdaudio* >> %Out%
ECHO. >> %Out%

ECHO ============ >> %Out%
ECHO RAID Devices >> %Out%
ECHO ============ >> %Out%
DEVCON hwids *CC_01* *Raid* >> %Out%
ECHO. >> %Out%

ECHO ============= >> %Out%
ECHO Input Devices >> %Out%
ECHO ============= >> %Out%
DEVCON find hid* >> %Out%
ECHO. >> %Out%

ECHO =========== >> %Out%
ECHO USB Devices >> %Out%
ECHO =========== >> %Out%
DEVCON find usb* >> %Out%
ECHO. >> %Out%

ECHO ============ >> %Out%
ECHO ACPI Devices >> %Out%
ECHO ============ >> %Out%
DEVCON find acpi* >> %Out%
ECHO. >> %Out%



ECHO =========== >> %Out%
ECHO ALL Devices >> %Out%
ECHO =========== >> %Out%
DEVCON status * >> %Out%
ECHO. >> %Out%