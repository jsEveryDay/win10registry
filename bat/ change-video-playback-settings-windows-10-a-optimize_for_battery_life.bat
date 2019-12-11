

powercfg /SETDCVALUEINDEX SCHEME_CURRENT 9596fb26-9850-41fd-ac3e-f7c3c00afd4b 10778347-1370-4ee0-8bbd-33bdacaade49 0


REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\VideoSettings" /V "DisableOtherEnhancementsOnBattery" /T REG_DWORD /D 0 /F
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\VideoSettings" /V "DecreaseResolutionOnBattery" /T REG_DWORD /D 0 /F
