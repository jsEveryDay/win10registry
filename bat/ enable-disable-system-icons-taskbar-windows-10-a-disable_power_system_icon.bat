@echo offREG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /V HideSCAPower /T REG_DWORD /D 1 /F

REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /V HideSCAPower /T REG_DWORD /D 1 /F

taskkill /f /im explorer.exe
start explorer.exe