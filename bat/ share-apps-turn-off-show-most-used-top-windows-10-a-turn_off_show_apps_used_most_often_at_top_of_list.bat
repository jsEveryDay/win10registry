@echo off

 

REG Add HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced /V Start_TrackShareContractMFU /T REG_DWORD /D 00000000 /F


taskkill /f /im explorer.exe

start explorer.exe