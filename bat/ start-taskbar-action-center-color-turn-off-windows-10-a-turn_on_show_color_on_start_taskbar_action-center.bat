@echo offReg Add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v ColorPrevalence /t REG_DWORD /d 1 /f


taskkill /f /im explorer.exe
start explorer.exe
