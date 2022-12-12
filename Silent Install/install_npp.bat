@echo off

REM Install NotePad++ if not already installed.
REM author: Florent Gossard
REM date: 12/12/2022

REM Change these variables to match your configuration.
set localExePath="%PROGRAMFILES%\NotePad++\notepad++.exe"
set sharedExePath="\\Share$\NotePad++\npp.8.3.3.Installer.x64.exe"

echo Installing NotePad++... 
if not exist %localExePath% %sharedExePath% /S
