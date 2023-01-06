@echo off

REM Install GeoGebra if not already installed.
REM Supported version: 5.0.700.0
REM Author: Florent Gossard
REM Date: 12/12/2022

REM Change these variables to match your configuration.
set localExePath="%PROGRAMFILES(X86)%\GeoGebra 5.0\GeoGebra.exe" 
set sharedMsiPath="\\Share$\GeoGebra\geogebra.msi"

echo Installing GeoGebra... 
if not exist %localExePath% msiexec /i %sharedMsiPath% ALLUSERS=2 /qn
