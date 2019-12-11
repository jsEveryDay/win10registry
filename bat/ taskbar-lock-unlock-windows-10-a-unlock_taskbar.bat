 

REG Add HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced /V TaskbarSizeMove /T REG_DWORD /D 00000001 /F


taskkill /f /im explorer.exe

start explorer.exe