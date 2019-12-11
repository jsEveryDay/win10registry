@echo offREG DELETE "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings" /V NOC_GLOBAL_SETTING_GLEAM_ENABLED /F


:: To kill and restart explorer
taskkill /f /im explorer.exe
start explorer.exe