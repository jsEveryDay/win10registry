@echo offREG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /V ShowPidInTitle /F

taskkill /f /im explorer.exe
start explorer.exe
