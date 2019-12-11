@echo offREG ADD "HKCU\Software\Policies\Microsoft\Windows\Explorer" /V ForceStartSize /T REG_DWORD /D 2 /F

REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\Explorer" /V ForceStartSize /T REG_DWORD /D 2 /F

taskkill /f /im explorer.exe
start explorer.exe