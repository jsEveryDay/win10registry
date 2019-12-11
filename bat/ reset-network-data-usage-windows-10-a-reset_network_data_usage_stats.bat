
powershell -windowstyle hidden -command "Start-Process cmd -ArgumentList '/s,/c,net stop DPS > NUL 2>&1 & DEL /F /S /Q /A "%windir%\System32\sru\*" & net start DPS > NUL 2>&1' -Verb runAs"