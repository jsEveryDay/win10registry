@echo offReg Add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v EnableBlurBehind /t REG_DWORD /d 0 /f

taskkill /f /im explorer.exe
start explorer.exe
