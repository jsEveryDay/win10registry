@echo offREG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows NT\DiskQuota" /V LogEventOverThreshold /T REG_dWORD /D 0 /F

gpupdate /force