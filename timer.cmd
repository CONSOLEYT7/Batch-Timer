@echo off
title Batch Timer By CONSOLEYT7

:setsec
cls
set /p sec=Type Seconds To Count : 
goto count

:count
cls
echo %sec% Seconds Remaining
timeout /t 1 /nobreak >nul
set /a sec=%sec%-1
if %sec% leq 0 goto end
goto count

:end
cls
echo Count Done
echo.
echo Press Any Key To Exit
pause >nul