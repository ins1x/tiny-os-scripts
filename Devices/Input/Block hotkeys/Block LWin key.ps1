# A specific key can be blocked using its scancode. For example, the left Windows key:
# https://t.me/c/3825611869/40
reg add "HKLM\SOFTWARE\Microsoft\Windows Embedded\KeyboardFilter\CustomScancodes" /v "E05B" /t REG_SZ /d "Blocked" /f