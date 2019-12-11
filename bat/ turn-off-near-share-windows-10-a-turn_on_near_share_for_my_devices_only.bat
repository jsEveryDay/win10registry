

REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\CDP" /V CdpSessionUserAuthzPolicy /T REG_DWORD /D 1 /F
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\CDP" /V NearShareChannelUserAuthzPolicy /T REG_DWORD /D 1 /F
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\CDP\SettingsPage" /V NearShareChannelUserAuthzPolicy /T REG_DWORD /D 1 /F


taskkill /f /im explorer.exe
start explorer.exe
