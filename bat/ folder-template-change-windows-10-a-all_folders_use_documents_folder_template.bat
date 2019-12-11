@echo offREG ADD "HKCU\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\Shell\Bags\AllFolders\Shell" /V FolderType /T REG_SZ /D Documents /F


:: To kill and restart explorer
taskkill /f /im explorer.exe
start explorer.exe

