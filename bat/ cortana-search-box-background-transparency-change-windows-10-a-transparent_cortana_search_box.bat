@echo offREG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Search\Flighting\0\SearchBoxTransparencyBackground" /V Value /T REG_DWORD /D 0 /F

REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Search\Flighting\1\SearchBoxTransparencyBackground" /V Value /T REG_DWORD /D 0 /F

taskkill /f /im explorer.exe
start explorer.exe
