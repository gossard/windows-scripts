# Install Rastop if not already installed (copy of executable and dlls).
# Supported version: 2.0.3
# Author: Florent Gossard
# Date: 06/01/2023

[string]$dllsPath = "C:\Windows\System"

# Change these variables to match your configuration.
[string]$localExePath = "C:\RasTop\RasTop.exe"
[string]$sharedExePath = "\\SRV\Share$\RasTop\rastop.exe"
[string]$sharedDllsPath = "\\SRV\Share$\RasTop\rastop-dll"

Write-Host "Installing RasTop..."

if(-not (Test-Path $localExePath)) {
    
    # exe
    New-Item -Path $localExePath -ItemType File -Force
    Copy-Item -Path $sharedExePath -Destination $localExePath -Force
    
    # dlls
    Copy-Item -Path "$($sharedDllsPath)\*" -Destination $dllsPath -Force
}
