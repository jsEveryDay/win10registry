

REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced /V MMTaskbarEnabled /T REG_dWORD /D 1 /F
REG ADD HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced /V MMTaskbarGlomLevel /T REG_dWORD /D 1 /F

taskkill /f /im explorer.exe
start explorer.exe