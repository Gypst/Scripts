@echo off
setlocal EnableExtensions EnableDelayedExpansion

:loop
echo.
echo Press 1 to stop the explorer.exe process, or 2 to start it.
echo Press Ctrl+C to exit the script.

set /p key=

if "!key!"=="1" (
    TIMEOUT /T 300 /NOBREAK
    taskkill /f /im explorer.exe
    echo Explorer.exe process has been stopped.
    goto loop
) 
if "!key!"=="2" (
    start explorer.exe
    echo Explorer.exe process has been started.
    goto loop
) 
echo Invalid input. Please press 1 or 2.
goto loop
