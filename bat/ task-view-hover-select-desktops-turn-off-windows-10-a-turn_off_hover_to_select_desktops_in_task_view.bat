@echo offREG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" /V HoverSelectDesktops /T REG_DWORD /D 0 /F

taskkill /f /im explorer.exe
start explorer.exe
