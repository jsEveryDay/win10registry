 

powershell -windowstyle hidden -command "Start-Process cmd -ArgumentList '/s,/c,REG Delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /V HideFastUserSwitching /F & REG Delete HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /V HideFastUserSwitching /F & taskkill /f /im explorer.exe & start explorer.exe' -Verb runAs"