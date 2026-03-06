rem switch Mozilla to Protected mode
rem in pre Quantum versions, you could make your Firefox safe against malware with a simple trick. 
rem It was rem little known but very effective because it uses Windows tools to limit Firefox abilities to write or modify files.
icacls "C:\Program Files (x86)\Mozilla Firefox\Firefox.exe" /setintegritylevel low
icacls "C:\Users\<yourAccName>\AppData\Local\Temp" /setintegritylevel(oi)(ci) low /t
icacls "C:\Users\<yourAccName>\AppData\Local\Mozilla" /setintegritylevel(oi)(ci) low /t
icacls "C:\Users\<yourAccName>\AppData\Roaming\Mozilla" /setintegritylevel(oi)(ci) low /t
icacls "C:\Users\<yourAccName>\Downloads" /setintegritylevel(oi)(ci) low /t
icacls "C:\Users\<nextAccName>\AppData\Local\Temp" /setintegritylevel(oi)(ci) low /t
icacls "C:\Users\<nextAccName>\AppData\Local\Mozilla" /setintegritylevel(oi)(ci) low /t
icacls "C:\Users\<nextAccName>\AppData\Roaming\Mozilla" /setintegritylevel(oi)(ci) low /t
icacls "C:\Users\<nextAccName>\Downloads" /setintegritylevel(oi)(ci) low /t