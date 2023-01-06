@echo off

REM Install Dozzzaqueux if not already installed.
REM Supported version: 3.53
REM Author: Florent Gossard
REM Date: 06/01/2023

REM Change these variables to match your configuration.
set localExePath="%PROGRAMFILES(X86)%\Dozzzaqueux\dozzzaqueux.exe"
set sharedExePath="\\SRV\Share$\Dozzzaqueux\dozzzaqueux.exe"

echo Installing Dozzzaqueux...
if not exist %localExePath% %sharedExePath% /VERYSILENT