@echo offREG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Search\Flighting" /V Current /T REG_DWORD /D 0 /F
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Search\Flighting" /V RotateFlight /T REG_DWORD /D 0 /F
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Search\Flighting\0\WhiteSearchBox" /V Value /T REG_DWORD /D 0 /F

taskkill /f /im explorer.exe
start explorer.exe
