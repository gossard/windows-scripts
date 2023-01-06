@echo off

REM Install ACD Freewares (ChemSketch, ChemBasic, 3D Viewer) if not already installed.
REM To have the MSI you must create it by launching the executable with the argument /a
REM Supported version: 2018.1.1
REM Author: Florent Gossard
REM Date: 06/01/2023

REM Change these variables to match your configuration.
set localExePath="C:\ACD2018FREE\CHEMSK.EXE"
set sharedMsiPath="\\SRV\Share$\ACD Freewares\script.msi"

echo Installing ACD Freewares...
if not exist %localExePath% msiexec /i %sharedMsiPath% /quiet /norestart