@echo off

REM Install Arduino if not already installed.
REM Supported version: 2.0.3
REM Author: Florent Gossard
REM Date: 09/01/2023

REM Change these variables to match your configuration.
set localExePath="%PROGRAMFILES%\Arduino IDE\Arduino IDE.exe"
set sharedExePath="\\SRV\Share$\Arduino\arduino.exe"

echo Installing Arduino...
if not exist %localExePath% %sharedExePath% /ALLUSERS /S