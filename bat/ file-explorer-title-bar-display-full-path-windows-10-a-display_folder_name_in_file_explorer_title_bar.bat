@echo offREG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\CabinetState" /V FullPath /T REG_DWORD /D 0 /F

:: To kill and restart explorer
taskkill /f /im explorer.exe
start explorer.exe