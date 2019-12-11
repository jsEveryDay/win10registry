

REG DELETE HKEY_CURRENT_USER\Software\Policies\Microsoft\Windows\Explorer /V DisableSearchBoxSuggestions /F 

REG DELETE HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Explorer /V DisableSearchBoxSuggestions /F 

taskkill /F /IM explorer.exe 
explorer.exe


