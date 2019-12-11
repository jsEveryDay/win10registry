@echo off@echo off
powershell -windowstyle hidden -command "Start-Process cmd -ArgumentList '/s,/c,REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /V NoTrayItemsDisplay /T REG_DWORD /D 1 /F & REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /V NoTrayItemsDisplay /T REG_DWORD /D 1 /F & taskkill /f /im explorer.exe & start explorer.exe' -Verb runAs"

