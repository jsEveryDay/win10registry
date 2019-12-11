@echo offREG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Search\Flighting\0\SearchBoxOnTop" /V Value /T REG_DWORD /D 1 /F

REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Search\Flighting\1\SearchBoxOnTop" /V Value /T REG_DWORD /D 1 /F

taskkill /f /im explorer.exe
start explorer.exe
