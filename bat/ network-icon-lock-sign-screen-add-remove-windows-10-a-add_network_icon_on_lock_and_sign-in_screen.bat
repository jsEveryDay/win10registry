@echo offREG Delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /V DontDisplayNetworkSelectionUI /F

taskkill /f /im explorer.exe
start explorer.exe