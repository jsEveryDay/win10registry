

REG ADD HKEY_CURRENT_USER\Software\Policies\Microsoft\Windows\Explorer /V DisableSearchBoxSuggestions /T REG_DWORD /D 1 /F 

REG ADD HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Explorer /V DisableSearchBoxSuggestions /T REG_DWORD /D 1 /F 

taskkill /F /IM explorer.exe 
explorer.exe


