@echo off

REM Install Gimp if not already installed.
REM Supported version: 2.10.30
REM Author: Florent Gossard
REM Date: 12/12/2022

REM Change these variables to match your configuration.
set localExePath="%PROGRAMFILES%\GIMP 2\bin\gimp-2.10.exe" 
set sharedExePath="\\Share$\Gimp\gimp.exe"

echo Installing Gimp... 
if not exist %localExePath% %sharedExePath% /VERYSILENT /NORESTART /ALLUSERS
