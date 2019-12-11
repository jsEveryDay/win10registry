@echo offREG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows NT\DiskQuota" /V LogEventOverLimit /T REG_dWORD /D 0 /F

gpupdate /force