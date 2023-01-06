@echo off

REM Install NotePad++ if not already installed.
REM Supported version: 8.3.3
REM Author: Florent Gossard
REM Date: 12/12/2022

REM Change these variables to match your configuration.
set localExePath="%PROGRAMFILES%\NotePad++\notepad++.exe"
set sharedExePath="\\Share$\NotePad++\npp.exe"

echo Installing NotePad++... 
if not exist %localExePath% %sharedExePath% /S
