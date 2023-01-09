@echo off

REM Install Stellarium if not already installed.
REM Supported version: 1.2
REM Author: Florent Gossard
REM Date: 09/01/2023

REM Change these variables to match your configuration.
set localExePath="%PROGRAMFILES%\Stellarium\stellarium.exe"
set sharedExePath="\\SRV\Share$\Stellarium\stellarium.exe"

echo Installing Stellarium...
if not exist %localExePath% %sharedExePath% /VERYSILENT /SUPPRESSMSGBOXES /SP-