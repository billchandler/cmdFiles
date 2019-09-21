@echo off
title checking
rem I edit off the wifi router's thumb drive

cd "C:\Program Files (x86)\Chandler\Checkbook\"

REM if not exist \\READYSHARE\USB_Storage\CheckBook\LACU.xml @echo cannot access network location & goto local

REM fc \\READYSHARE\USB_Storage\CheckBook\LACU.xml "%USERPROFILE%\Documents\Banking\checkbookBackups\LACU.XML"
REM IF ERRORLEVEL 1 title Files not identical & rundll32 user32.dll,MessageBeep & TIMEOUT /T 10 /NOBREAK & exit

title network ok
Checkbook.exe %1

:local

rem save a copy locally to primary backup on raspy
xcopy /y /D  "%USERPROFILE%\Documents\Banking\checkbookBackups\LACU.*" \\raspy\public\CheckBook

IF ERRORLEVEL 1 title Copy Failed & rundll32 user32.dll,MessageBeep & TIMEOUT /T 10 /NOBREAK & exit
title Copy Succeeded to raspy

rem one more place to backup
xcopy /y /D  "%USERPROFILE%\Documents\Banking\checkbookBackups\LACU.XML" \\READYSHARE\USB_Storage

TIMEOUT /T 10 /NOBREAK
exit

REM :local
REM title local version  edited
REM Checkbook.exe "%USERPROFILE%\Documents\Banking\checkbookBackups\LACU.XML"
REM TIMEOUT /T 10 /NOBREAK