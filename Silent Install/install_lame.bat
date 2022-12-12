@echo off

REM Install Lame if not already installed.
REM author: Florent Gossard
REM date: 12/12/2022

REM Change these variables to match your configuration.
set localExePath="%PROGRAMFILES(X86)%\Lame for Audacity\lame.exe" 
set sharedExePath="\\Share$\Lame\Lame_v3.99.3_for_Windows.exe"

echo Installing Lame... 
if not exist %localExePath% %sharedExePath% /VERYSILENT /NORESTART
