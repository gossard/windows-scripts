@echo off

REM Install Audacity if not already installed.
REM Supported version: 3.2.2
REM Author: Florent Gossard
REM Date: 12/12/2022

REM Change these variables to match your configuration.
set localExePath="%PROGRAMFILES%\Audacity\Audacity.exe" 
set sharedExePath="\\SRV\Share$\Audacity\audacity.exe"

echo Installing Audacity... 
if not exist %localExePath% %sharedExePath% /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-
