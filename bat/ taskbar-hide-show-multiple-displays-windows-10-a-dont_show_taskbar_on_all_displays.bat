 

REG ADD HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced /V MMTaskbarEnabled /T REG_dWORD /D 0 /F


taskkill /f /im explorer.exe

start explorer.exe