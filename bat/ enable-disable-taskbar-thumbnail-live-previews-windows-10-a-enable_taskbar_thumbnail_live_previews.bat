@echo off:: Enable taskbar live thumbnail previews
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /V DisablePreviewWindow /T REG_DWORD /D 0 /F

:: Enable Peek
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\DWM" /V EnableAeroPeek /T REG_DWORD /D 1 /F

taskkill /f /im explorer.exe
start explorer.exe