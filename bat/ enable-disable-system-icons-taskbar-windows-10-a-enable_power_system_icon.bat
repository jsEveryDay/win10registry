@echo offREG DELETE "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /V HideSCAPower /F

REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /V HideSCAPower /F

taskkill /f /im explorer.exe
start explorer.exe