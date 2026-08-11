# The Keyboard Filter component built into Windows allows an administrator to disable the use of specific key combinations.

# To block one of them, simply change the value of the corresponding parameter to `Blocked`.
# Keyboard Filter is supported only in the Enterprise, Education, IoT Enterprise, and LTSC editions. The filter does not work in RDP sessions.

Enable-WindowsOptionalFeature -Online -FeatureName Client-KeyboardFilter
reg add "HKLM\SOFTWARE\Microsoft\Windows Embedded\KeyboardFilter\CustomFilters" /v "Ctrl+C" /t REG_SZ /d "Blocked" /f