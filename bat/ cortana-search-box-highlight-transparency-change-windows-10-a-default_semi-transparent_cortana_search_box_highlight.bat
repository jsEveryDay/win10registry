@echo offREG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Search\Flighting\0\SearchBoxTransparencyHighlight" /V Value /T REG_DWORD /D 80 /F

REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Search\Flighting\1\SearchBoxTransparencyHighlight" /V Value /T REG_DWORD /D 80 /F

taskkill /f /im explorer.exe
start explorer.exe
