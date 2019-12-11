@echo offREG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /V UseTabletModeNotificationIcons /T REG_DWORD /D 1 /F

:: To kill and restart explorer
taskkill /f /im explorer.exe
start explorer.exe