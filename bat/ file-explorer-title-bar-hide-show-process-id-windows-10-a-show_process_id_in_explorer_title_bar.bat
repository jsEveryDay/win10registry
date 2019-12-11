@echo offREG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /V ShowPidInTitle /T REG_DWORD /D 1 /F

taskkill /f /im explorer.exe
start explorer.exe
