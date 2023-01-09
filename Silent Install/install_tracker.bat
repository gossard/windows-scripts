@echo off

REM Install Tracker if not already installed.
REM Supported version: 6.0.10
REM Author: Florent Gossard
REM Date: 09/01/2023

REM Change these variables to match your configuration.
set localExePath="%PROGRAMFILES%\Tracker\Tracker.exe"
set sharedExePath="\\SRV\Share$\Tracker\tracker.exe"

echo Installing Tracker...
if not exist %localExePath% %sharedExePath% --mode unattended