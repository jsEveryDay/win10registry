

REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows NT\DiskQuota" /V LogEventOverLimit /T REG_dWORD /D 1 /F

gpupdate /force