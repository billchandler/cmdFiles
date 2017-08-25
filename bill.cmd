@echo off
PATH %path%;%USERPROFILE%\Tools\util;%USERPROFILE%\Tools\BATCH;C:\MinGW\bin
echo test
::set TZ=CSTCDT
rem C:\WINDOWS\system32\doskey vim="C:\Program Files (x86)\Vim\vim72\gvim.exe" $*
C:\WINDOWS\system32\doskey el=notepad "%USERPROFILE%\Tools\BATCH\bill.cmd"
C:\WINDOWS\system32\doskey dr=dir /od
cd c:\Users\wcc