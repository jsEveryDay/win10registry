@echo offReg ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /V LastActiveClick /T REG_DWORD /D 0 /F

taskkill /f /im explorer.exe
start explorer.exe/T REG_DWORD /D 0 /F

taskkill /f /im explorer.exe
start explorer.exe