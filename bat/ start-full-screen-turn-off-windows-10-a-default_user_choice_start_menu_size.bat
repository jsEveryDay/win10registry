@echo offREG DELETE "HKCU\Software\Policies\Microsoft\Windows\Explorer" /V ForceStartSize /F

REG DELETE "HKLM\SOFTWARE\Policies\Microsoft\Windows\Explorer" /V ForceStartSize /F

taskkill /f /im explorer.exe
start explorer.exe