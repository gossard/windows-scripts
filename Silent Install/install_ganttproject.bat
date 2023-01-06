@echo off

REM Install GanttProject if not already installed.
REM Supported version: 3.2.3240
REM Author: Florent Gossard
REM Date: 12/12/2022

REM Change these variables to match your configuration.
set localExePath="%PROGRAMFILES(X86)%\GanttProject-3.2\ganttproject.exe"
set sharedExePath="\\Share$\GanttProject\ganttproject.exe"

echo Installing GanttProject...
if not exist %localExePath% %sharedExePath% /S
