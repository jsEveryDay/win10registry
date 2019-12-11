

REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows NT\DiskQuota" /V Enable /T REG_dWORD /D 1 /F

gpupdate /force