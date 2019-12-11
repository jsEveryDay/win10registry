@echo offREG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings" /V NOC_GLOBAL_SETTING_GLEAM_ENABLED /T REG_DWORD /D 0 /F


:: To kill and restart explorer
taskkill /f /im explorer.exe
start explorer.exe