@echo offREG DELETE "HKCU\Software\Policies\Microsoft\Windows\Explorer" /V DisableNotificationCenter /F

REG DELETE "HKLM\SOFTWARE\Policies\Microsoft\Windows\Explorer" /V DisableNotificationCenter /F

taskkill /f /im explorer.exe
start explorer.exe