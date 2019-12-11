

REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /V VirtualDesktopTaskbarFilter /T REG_DWORD /D 0 /F

taskkill /f /im explorer.exe
start explorer.exe