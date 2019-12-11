@ECHO OFF
TITLE Add Recovery to Windows boot menu
:SETLETTER
CLS
ECHO.
ECHO             ###################################################
ECHO             #                                                 #
ECHO             #   This batch file creates recovery environment  #
ECHO             #        adding it to Windows boot menu.          #
ECHO             #                                                 #
ECHO             ###################################################
ECHO.
SET /P DRIVELETTER= ^-- Please enter drive letter for your custom recovery partition (without colon): 
IF NOT EXIST %DRIVELETTER%:\sources\boot.wim ECHO. & ECHO No valid Windows image found on given partition %DRIVELETTER% &ECHO. & PAUSE & GOTO :SETLETTER
ECHO.
bcdedit /create {ramdiskoptions} /d "Ramdisk"
bcdedit /set {ramdiskoptions} ramdisksdidevice partition=%DRIVELETTER%:
bcdedit /set {ramdiskoptions} ramdisksdipath \boot\boot.sdi
for /f "tokens=2 delims={}" %%i in ('bcdedit.exe /create /d "Recovery" /application OSLOADER') do (set guid={%%i})
bcdedit /set %guid% device ramdisk=[%DRIVELETTER%:]\sources\boot.wim,{ramdiskoptions}
bcdedit /set %guid% path \windows\system32\winload.efi
bcdedit /set %guid% osdevice ramdisk=[%DRIVELETTER%:]\sources\boot.wim,{ramdiskoptions}
bcdedit /set %guid% systemroot \windows
bcdedit /set %guid% winpe yes
bcdedit /set %guid% detecthal yes
bcdedit /displayorder %guid% /addlast
pause