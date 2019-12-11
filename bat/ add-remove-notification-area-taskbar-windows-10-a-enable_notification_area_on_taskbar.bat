@echo off@echo off
powershell -windowstyle hidden -command "Start-Process cmd -ArgumentList '/s,/c,REG DELETE "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /V NoTrayItemsDisplay /F & REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /V NoTrayItemsDisplay /F & taskkill /f /im explorer.exe & start explorer.exe' -Verb runAs"


