

@ECHO OFF

title Backup and Restore Folder View Settings Tool
:choice
cls
echo.
echo OPTIONS:
echo.
echo 1. Back up your folder view settings.
echo 2. Restore folder view settings from backup.
echo 3. Cancel
echo.
echo.
set /P c=Type the option number you would like to do, and press Enter?
if /I "%c%" EQU "1" goto :verify1
if /I "%c%" EQU "2" goto :verify2
if /I "%c%" EQU "3" exit
goto :choice


:verify1
IF EXIST "%userprofile%\Desktop\Folder View Settings Backup" goto :response1
goto :backup

:response1
echo.
echo.
echo You already have a "Folder View Settings Backup" folder on your desktop.
echo Please move it to another location, and try again.
echo.
pause
goto :choice


:backup
mkdir "%userprofile%\Desktop\Folder View Settings Backup"
REG EXPORT HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Streams\Defaults "%userprofile%\Desktop\Folder View Settings Backup\HKCU_Software_Microsoft_Windows_CurrentVersion_Explorer_Streams_Defaults.reg" /y
REG EXPORT HKCU\Software\Microsoft\Windows\Shell\BagMRU "%userprofile%\Desktop\Folder View Settings Backup\HKCU_Software_Microsoft_Windows_Shell_BagMRU.reg" /y
REG EXPORT HKCU\Software\Microsoft\Windows\Shell\Bags "%userprofile%\Desktop\Folder View Settings Backup\HKCU_Software_Microsoft_Windows_Shell_Bags.reg" /y
REG EXPORT HKCU\Software\Microsoft\Windows\ShellNoRoam\Bags "%userprofile%\Desktop\Folder View Settings Backup\HKCU_Software_Microsoft_Windows_ShellNoRoam_Bags.reg" /y
REG EXPORT HKCU\Software\Microsoft\Windows\ShellNoRoam\BagMRU "%userprofile%\Desktop\Folder View Settings Backup\HKCU_Software_Microsoft_Windows_ShellNoRoam_BagMRU.reg" /y
REG EXPORT "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU" "%userprofile%\Desktop\Folder View Settings Backup\HKCU_Software_Classes_LocalSettings_Software_Microsoft_Windows_Shell_BagMRU.reg" /y
REG EXPORT "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\Bags" "%userprofile%\Desktop\Folder View Settings Backup\HKCU_Software_Classes_LocalSettings_Software_Microsoft_Windows_Shell_Bags.reg" /y
cls
echo.
echo Backup of folder view settings successfully completed.
echo.
pause 
exit

:verify2
IF NOT EXIST "%userprofile%\Desktop\Folder View Settings Backup" goto :response
goto :restore

:response
echo.
echo.
echo You do not have a "Folder View Settings Backup" folder on your desktop.
echo Please place the backup folder on your desktop, and try again.
echo.
pause
goto :choice


:restore 
REG Delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Streams\Defaults" /F
Reg Delete "HKCU\Software\Microsoft\Windows\Shell\BagMRU" /F
Reg Delete "HKCU\Software\Microsoft\Windows\Shell\Bags" /F
Reg Delete "HKCU\Software\Microsoft\Windows\ShellNoRoam\Bags" /F
Reg Delete "HKCU\Software\Microsoft\Windows\ShellNoRoam\BagMRU" /F
Reg Delete "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU" /F
Reg Delete "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\Bags" /F

REG IMPORT "%userprofile%\Desktop\Folder View Settings Backup\HKCU_Software_Microsoft_Windows_CurrentVersion_Explorer_Streams_Defaults.reg"
REG IMPORT "%userprofile%\Desktop\Folder View Settings Backup\HKCU_Software_Microsoft_Windows_Shell_BagMRU.reg"
REG IMPORT "%userprofile%\Desktop\Folder View Settings Backup\HKCU_Software_Microsoft_Windows_Shell_Bags.reg"
REG IMPORT "%userprofile%\Desktop\Folder View Settings Backup\HKCU_Software_Microsoft_Windows_ShellNoRoam_Bags.reg"
REG IMPORT "%userprofile%\Desktop\Folder View Settings Backup\HKCU_Software_Microsoft_Windows_ShellNoRoam_BagMRU.reg"
REG IMPORT "%userprofile%\Desktop\Folder View Settings Backup\HKCU_Software_Classes_LocalSettings_Software_Microsoft_Windows_Shell_BagMRU.reg"
REG IMPORT "%userprofile%\Desktop\Folder View Settings Backup\HKCU_Software_Classes_LocalSettings_Software_Microsoft_Windows_Shell_Bags.reg"
cls
echo.
echo Backup of folder view settings successfully restored.
echo.
echo Waiting to restart explorer to apply.
echo Your screen will flash as explorer is restarted.
echo.
echo.
pause
taskkill /f /im explorer.exe
start explorer.exe 
exit