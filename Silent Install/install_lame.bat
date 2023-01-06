@echo off

REM Install Lame if not already installed.
REM Supported version: 3.99.3
REM Author: Florent Gossard
REM Date: 12/12/2022

REM Change these variables to match your configuration.
set localExePath="%PROGRAMFILES(X86)%\Lame for Audacity\lame.exe" 
set sharedExePath="\\SRV\Share$\Lame\lame.exe"

echo Installing Lame... 
if not exist %localExePath% %sharedExePath% /VERYSILENT /NORESTART
