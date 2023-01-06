@echo off

REM Install EduPython if not already installed.
REM Supported version: 3.6.3.0
REM Author: Florent Gossard
REM Date: 06/01/2023

REM Change these variables to match your configuration.
set localExePath="C:\EduPython\EduPython.exe"
set sharedExePath="\\SRV\Share$\EduPython\edupython.exe"

echo Installing EduPython...
if not exist %localExePath% %sharedExePath% /VERYSILENT /SUPPRESSMSGBOXES /SP-