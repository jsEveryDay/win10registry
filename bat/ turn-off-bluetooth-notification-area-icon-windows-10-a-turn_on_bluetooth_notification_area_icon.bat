 

REG ADD "HKCU\Control Panel\Bluetooth" /V "Notification Area Icon" /T REG_DWORD /D 00000001 /F


taskkill /f /im explorer.exe

start explorer.exe