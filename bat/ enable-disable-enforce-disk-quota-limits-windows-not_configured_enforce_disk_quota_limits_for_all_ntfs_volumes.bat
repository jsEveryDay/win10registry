@echo offREG DELETE "HKLM\SOFTWARE\Policies\Microsoft\Windows NT\DiskQuota" /V Enforce /F

gpupdate /force