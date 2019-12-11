

REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\People\ShoulderTap" /V ShoulderTap /T REG_DWORD /D 0 /F

taskkill /f /im explorer.exe
start explorer.exe