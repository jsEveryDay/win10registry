@echo offREG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /V SearchboxTaskbarMode /T REG_DWORD /D 2 /F

:: To kill and restart explorer
taskkill /f /im explorer.exe
start explorer.exe