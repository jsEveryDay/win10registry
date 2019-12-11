@echo offREG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /V ShowSuperHidden /T REG_DWORD /D 0 /F

taskkill /f /im explorer.exe
start explorer.exe