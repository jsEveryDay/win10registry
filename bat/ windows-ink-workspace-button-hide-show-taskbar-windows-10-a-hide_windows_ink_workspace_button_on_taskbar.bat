@echo offREG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\PenWorkspace" /V PenWorkspaceButtonDesiredVisibility /T REG_DWORD /D 0 /F

:: To kill and restart explorer
taskkill /f /im explorer.exe
start explorer.exe
