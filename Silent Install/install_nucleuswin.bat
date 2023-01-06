@echo off

REM Install Nucleus-Win if not already installed.
REM Supported version: 2.1
REM Author: Florent Gossard
REM Date: 06/01/2023

REM Change these variables to match your configuration.
set localExePath="%PROGRAMFILES(X86)%\Nucleus-Win\Nucleus-Win3.exe"
set sharedExePath="\\SRV\Share$\Nucleus-Win\nucleuswin.exe"

echo Installing Nucleus-Win...
if not exist %localExePath% %sharedExePath% /VERYSILENT /SUPPRESSMSGBOXES /SP-