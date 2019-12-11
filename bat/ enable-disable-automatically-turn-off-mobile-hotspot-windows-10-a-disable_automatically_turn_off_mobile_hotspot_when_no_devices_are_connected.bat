

powershell -windowstyle hidden -command "Start-Process cmd -ArgumentList '/s,/c,net stop "icssvc" & REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\icssvc\Settings" /V PeerlessTimeoutEnabled /T REG_DWORD /D 0 /F & net start "icssvc"' -Verb runAs"


