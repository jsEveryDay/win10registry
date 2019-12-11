@echo offREG DELETE "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\MultiTaskingView\AllUpView" /V Enabled /F

REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /V ShowTaskViewButton /T REG_DWORD /D 1 /F


:: To kill and restart explorer
taskkill /f /im explorer.exe
start explorer.exe