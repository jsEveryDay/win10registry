

@echo off
powershell -windowstyle hidden -command "Start-Process cmd -ArgumentList '/s,/c,net stop wuauserv & del %systemroot%\SoftwareDistribution\DataStore\Logs\edb.log & net start wuauserv' -Verb runAs"


