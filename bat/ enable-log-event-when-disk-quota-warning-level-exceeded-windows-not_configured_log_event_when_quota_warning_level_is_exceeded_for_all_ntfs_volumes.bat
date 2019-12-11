@echo offREG DELETE "HKLM\SOFTWARE\Policies\Microsoft\Windows NT\DiskQuota" /V LogEventOverThreshold /F

gpupdate /force