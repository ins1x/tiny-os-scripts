# Logging to a text file. The easiest way is to enable logging to the standard log
Set-NetFireWallProfile -Profile Public `
  -LogBlocked True `
  -LogMaxSize 20480 `
  -LogFileName "%systemroot%\system32\LogFiles\Firewall\pfirewall.log" `
  -Verbose