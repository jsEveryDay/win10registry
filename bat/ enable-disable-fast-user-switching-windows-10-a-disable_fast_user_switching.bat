 

powershell -windowstyle hidden -command "Start-Process cmd -ArgumentList '/s,/c,REG ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /V HideFastUserSwitching /T REG_DWORD /D 00000001 /F & REG Delete HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /V HideFastUserSwitching /F & taskkill /f /im explorer.exe & start explorer.exe' -Verb runAs"