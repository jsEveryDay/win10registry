@echo offREG ADD "HKCU\Software\Microsoft\Touchpad" /V TouchpadDesiredVisibility /T REG_DWORD /D 0 /F

taskkill /f /im explorer.exe
start explorer.exe