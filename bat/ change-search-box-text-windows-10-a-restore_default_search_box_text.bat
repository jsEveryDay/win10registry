@echo offREG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Search\Flighting\0\SearchBoxText" /v Value /t REG_SZ /d "Type here to search" /F

REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Search\Flighting\1\SearchBoxText" /v Value /t REG_SZ /d "Type here to search" /F

taskkill /f /im explorer.exe
start explorer.exe
