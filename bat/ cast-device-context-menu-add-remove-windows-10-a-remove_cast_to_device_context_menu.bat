@echo offREG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked" /V {7AD84985-87B4-4a16-BE58-8B72A5B390F7} /T REG_SZ /D "Play to Menu" /F

taskkill /f /im explorer.exe
start explorer.exe
