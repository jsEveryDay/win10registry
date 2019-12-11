

REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /V AutoCheckSelect /T REG_DWORD /D 1 /F

taskkill /f /im explorer.exe
start explorer.exe