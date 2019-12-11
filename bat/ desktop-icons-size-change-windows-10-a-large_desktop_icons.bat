@echo off
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\Shell\Bags\1\Desktop" /V IconSize /T REG_DWORD /D 96 /F
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\Shell\Bags\1\Desktop" /V Mode /T REG_DWORD /D 1 /F
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\Shell\Bags\1\Desktop" /V LogicalViewMode /T REG_DWORD /D 3 /F

taskkill /f /im explorer.exe
start explorer.exe
