@echo offREG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" /V EnableAutoTray /T REG_DWORD /D 0 /F

:: To kill and restart explorer
taskkill /f /im explorer.exe
start explorer.exe