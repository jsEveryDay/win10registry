@echo offREG DELETE "HKLM\SOFTWARE\Policies\Microsoft\Windows NT\DiskQuota" /V Enable /F

gpupdate /force