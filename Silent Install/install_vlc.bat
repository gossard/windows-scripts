@echo off

REM Install VLC if not already installed.
REM Supported version: 3.0.16
REM author: Florent Gossard
REM date: 12/12/2022

REM Change these variables to match your configuration.
set localExePath="%PROGRAMFILES%\VideoLAN\VLC\vlc.exe"
set sharedExePath="\\Share$\VLC\vlc.exe"

echo Installing VLC... 
if not exist %localExePath% %sharedExePath% /S
