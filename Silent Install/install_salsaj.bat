@echo off

REM Install SalsaJ if not already installed (requires JRE).
REM Supported version: 2.3
REM Author: Florent Gossard
REM Date: 09/01/2023

REM Change these variables to match your configuration.
set localExePath="%PROGRAMFILES(X86)%\SalsaJ\SalsaJ.jar"
set sharedExePath="\\SRV\Share$\SalsaJ\salsaj.exe"

echo Installing SalsaJ...
if not exist %localExePath% %sharedExePath% /S