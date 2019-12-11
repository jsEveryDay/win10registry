 

REG DELETE HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Streams\Desktop /F

taskkill /f /im explorer.exe

start explorer.exe