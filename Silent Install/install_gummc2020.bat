@echo off

REM Install Gum MC 2020 if not already installed.
REM Supported version: 1.01
REM Author: Florent Gossard
REM Date: 06/01/2023

REM Change these variables to match your configuration.
set localExePath="%PROGRAMFILES(X86)%\Gum_MC_2020\gum_mc_2020.exe"
set sharedExePath="\\SRV\Share$\Gum MC 2020\gummc2020.exe"

echo Installing Gum MC 2020...
if not exist %localExePath% %sharedExePath% /VERYSILENT