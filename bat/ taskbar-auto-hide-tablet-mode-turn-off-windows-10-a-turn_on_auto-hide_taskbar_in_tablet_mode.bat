@echo offREG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /V TaskbarAutoHideInTabletMode /T REG_DWORD /D 1 /F

:: To kill and restart explorer
taskkill /f /im explorer.exe
start explorer.exe
