@echo off


echo.
echo The explorer process must be temporarily killed before resetting the thumbnail cache. 
echo.
echo Please SAVE ALL OPEN WORK before continuing.
echo.
pause

echo.
taskkill /f /im explorer.exe
timeout 2 /nobreak>nul
echo.

DEL /F /S /Q /A %LocalAppData%\Microsoft\Windows\Explorer\thumbcache_*.db

timeout 2 /nobreak>nul
start explorer.exe
echo.
pause