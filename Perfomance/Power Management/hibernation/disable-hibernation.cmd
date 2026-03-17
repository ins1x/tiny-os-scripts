rem Hibernation is unnecessary and can result in BSODs. 
rem Additionally it consumes space. Run as admin.
powercfg -h off
rem If you are using an external SSD for Windows, then it is recommended instead to do the following:
rem Powercfg /h on Powercfg /h /type reduced