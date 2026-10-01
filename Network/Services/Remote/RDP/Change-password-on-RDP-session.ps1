# Change your account password from an RDP session

# Variant 1 call explorer.exe shell:::{2559a1f2-21d7-11d4-bdaf-00c04f60b9f0}
# or use PS command:
C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -noprofile -nologo -noninteractive -command "(new-object -ComObject shell.application).WindowsSecurity()" 