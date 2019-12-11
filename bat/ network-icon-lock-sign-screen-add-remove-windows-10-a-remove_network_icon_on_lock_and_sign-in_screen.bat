@echo offREG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /V DontDisplayNetworkSelectionUI /T REG_DWORD /D 1 /F

taskkill /f /im explorer.exe
start explorer.exe
