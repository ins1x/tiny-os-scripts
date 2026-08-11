# The Keyboard Filter component built into Windows allows an administrator to disable the use of specific key combinations.
# Keyboard Filter is supported only in the Enterprise, Education, IoT Enterprise, and LTSC editions. The filter does not work in RDP sessions.

# The registry key `HKLM\SOFTWARE\Microsoft\Windows Embedded\KeyboardFilter` 
# already contains a list of predefined (standard) Windows key combinations. 
# To block one of them, simply change the value of the corresponding parameter to `Blocked`.

Enable-WindowsOptionalFeature -Online -FeatureName Client-KeyboardFilter
reg add "HKLM\SOFTWARE\Microsoft\Windows Embedded\KeyboardFilter" /v "Alt+F4" /t REG_SZ /d "Blocked" /f