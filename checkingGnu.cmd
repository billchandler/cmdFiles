@echo off
title gnu checking

SETLOCAL   

cd "%USERPROFILE%\Documents\Banking\gnuCash"
"C:\Program Files (x86)\gnucash\bin\gnucash.exe"

del /q Gnu*.7z

rem get a date stamp to apply to saved filename
for /f "tokens=2 delims==" %%a in ('wmic OS Get localdatetime /value') do set "dt=%%a"
set "YY=%dt:~2,2%" & set "YYYY=%dt:~0,4%" & set "MM=%dt:~4,2%" & set "DD=%dt:~6,2%"
REM set "HH=%dt:~8,2%" & set "Min=%dt:~10,2%" & set "Sec=%dt:~12,2%"

set "datestamp=%YYYY%-%MM%-%DD%" & set "timestamp=%HH%%Min%%Sec%"
REM set "fullstamp=%YYYY%-%MM%-%DD%_%HH%-%Min%-%Sec%"
echo datestamp: "%datestamp%"

rem could also use gnu's date.exe +%F, but may have to download it

REM dremove old files
ForFiles /m "billsCheckingGnu.gnucash.20*"  /d -30 /c "cmd /c del @file"

%USERPROFILE%\tools\util\7za a  GnuCash_%datestamp%

rem save a copy  on raspy
REM xcopy /y /D  *.* \\raspy\public\CheckBook\gnuCash
xcopy /y   *.7z \\raspy\public\CheckBook\gnuCash

IF ERRORLEVEL 1 title Copy Raspy Failed & rundll32 user32.dll,MessageBeep & TIMEOUT /T 10 /NOBREAK 
title Copy to Raspy Succeeded

rem one more place to backup
xcopy /y   *.7z  \\ReadyShare\USB_Storage\gnuCash
IF ERRORLEVEL 1 title Copy Readyshare Failed & rundll32 user32.dll,MessageBeep & TIMEOUT /T 10 /NOBREAK 
title Copy to Readyshare Succeeded

TIMEOUT /T 12 /NOBREAK
ENDLOCAL
exit
