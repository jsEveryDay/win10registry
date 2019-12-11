@echo offREG Delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /V ShowDriveLettersFirst /F

taskkill /f /im explorer.exe
start explorer.exe