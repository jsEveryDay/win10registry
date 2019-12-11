@echo offREG ADD "HKCU\SOFTWARE\Classes\CLSID\{E31EA727-12ED-4702-820C-4B6445F28E1A}\ShellFolder" /V Attributes /T REG_DWORD /D 4034920525 /F
REG ADD "HKCU\SOFTWARE\Classes\WOW6432Node\CLSID\{E31EA727-12ED-4702-820C-4B6445F28E1A}\ShellFolder" /V Attributes /T REG_DWORD /D 4034920525 /F

taskkill /f /im explorer.exe
start explorer.exe
