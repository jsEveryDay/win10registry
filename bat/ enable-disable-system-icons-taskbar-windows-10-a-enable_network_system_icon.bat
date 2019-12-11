@echo offREG DELETE "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /V HideSCANetwork /F

REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /V HideSCANetwork /F

taskkill /f /im explorer.exe
start explorer.exe