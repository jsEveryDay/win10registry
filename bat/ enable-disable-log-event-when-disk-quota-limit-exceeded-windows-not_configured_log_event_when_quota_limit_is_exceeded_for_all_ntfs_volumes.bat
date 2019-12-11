@echo offREG DELETE "HKLM\SOFTWARE\Policies\Microsoft\Windows NT\DiskQuota" /V LogEventOverLimit /F

gpupdate /force