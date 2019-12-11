@echo off
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\Shell\Bags\1\Desktop" /V FFLAGS /T REG_DWORD /D 1075839524 /F

taskkill /f /im explorer.exe
start explorer.exe
