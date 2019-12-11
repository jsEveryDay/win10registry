@echo offREG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /V ShowDriveLettersFirst /T REG_DWORD /D 1 /F

taskkill /f /im explorer.exe
start explorer.exe