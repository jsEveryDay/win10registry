@echo offREG ADD "HKCU\Software\Policies\Microsoft\Windows\Explorer" /V ForceStartSize /T REG_DWORD /D 1 /F

REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\Explorer" /V ForceStartSize /T REG_DWORD /D 1 /F

taskkill /f /im explorer.exe
start explorer.exe