@ECHO off

REM Cleans up roaming profiles that are considered broken
REM Acts on the ProfileList (HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\ProfileList) and user folders, only for roaming profiles (which have a central profile)
REM - 1) Deletes the key when user folder does not exist
REM - 2) Deletes the key and user folder when the profile state is set to 20001
REM Tested on Windows 7 & 10
REM Author: F.Gossard

SETLOCAL EnableDelayedExpansion
CD %System32%

SET brokenState=0x20001
SET profileListPath="HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\ProfileList"
SET allUserKeysFile=%TEMP%\allUserKeys.txt

REM Query user keys and send the result to a temporary file
REG QUERY %profileListPath% | FINDSTR %profileListPath% > %allUserKeysFile%

ECHO Keys ------------------------
TYPE %allUserKeysFile%
ECHO ------------------------

FOR /F "tokens=*" %%K IN (%allUserKeysFile%) DO (

    ECHO Checking the key: %%K

    REM Query CentralProfile key (CentralProfile, REG_SZ, [Path])
    FOR /F "tokens=3" %%C IN ('REG QUERY "%%K" /v CentralProfile 2^> NUL') DO (

        IF !ERRORLEVEL! EQU 0 (

            ECHO Has CentralProfile with value: %%C

            REM Query ProfileImagePath key (ProfileImagePath, REG_EXPAND_SZ, [Path])
            FOR /F "tokens=3" %%P IN ('REG QUERY "%%K" /v ProfileImagePath 2^> NUL') DO (

                IF !ERRORLEVEL! EQU 0 (

                    ECHO Has ProfileImagePath with value: %%P

                    CALL :CHECK_PATH %%P

                    IF !ERRORLEVEL! EQU 1 (
                        ECHO The path does not exist, deletion of the user key
                        REG DELETE "%%K" /f
                    ) ELSE (
                        REM Query State key (State, REG_DWORD, [Value])
                        FOR /F "tokens=3" %%S IN ('REG QUERY "%%K" /v State 2^> NUL') DO (
                            IF !ERRORLEVEL! EQU 0 IF %%S EQU %brokenState% (
                                ECHO Is broken profile with State %%S, deletion of the user key and folder
                                REG DELETE "%%K" /f
                                RMDIR /s /q %%P
                            )
                        )
                    )
                )
            )
        )
    )
    ECHO ----
)

GOTO :EOF

REM Returns 0 if the path exists, otherwise returns 1
:CHECK_PATH
IF EXIST %1 (
    EXIT /b 0
)
EXIT /b 1

:EOF
