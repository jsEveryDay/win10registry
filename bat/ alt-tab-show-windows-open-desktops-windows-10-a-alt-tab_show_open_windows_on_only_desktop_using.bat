

REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /V VirtualDesktopAltTabFilter /T REG_DWORD /D 1 /F

taskkill /f /im explorer.exe
start explorer.exe