@echo offREG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /V ShowDriveLettersFirst /T REG_DWORD /D 4 /F

taskkill /f /im explorer.exe
start explorer.exe