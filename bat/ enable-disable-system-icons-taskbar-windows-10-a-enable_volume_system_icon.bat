@echo offREG DELETE "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /V HideSCAVolume /F

REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /V HideSCAVolume /F

taskkill /f /im explorer.exe
start explorer.exe