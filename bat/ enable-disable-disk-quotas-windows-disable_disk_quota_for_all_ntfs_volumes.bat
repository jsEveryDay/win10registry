@echo offREG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows NT\DiskQuota" /V Enable /T REG_dWORD /D 0 /F

gpupdate /force