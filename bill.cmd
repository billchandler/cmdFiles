rem config for my cmd shell
rem shortcut to this:  C:\WINDOWS\system32\cmd.exe /k %USERPROFILE%\Tools\BATCH\Bill.cmd
@echo off
PATH %path%;%USERPROFILE%\Tools\util;%USERPROFILE%\Tools\BATCH;C:\MinGW\bin

IF EXIST "C:\Program Files\Notepad++\notepad++.exe" (
        set ED="C:\Program Files\Notepad++\notepad++.exe"
    ) ELSE (
        set ED=notepad.exe
    )

::set TZ=CSTCDT
rem C:\WINDOWS\system32\doskey vim="C:\Program Files (x86)\Vim\vim72\gvim.exe" $*

rem C:\WINDOWS\system32\doskey el="C:\Program Files\Notepad++\notepad++.exe"  "%USERPROFILE%\Tools\BATCH\bill.cmd"

doskey el=%ED% %~dpnx0
doskey dr=dir /od
doskey edit=%ED% $*
cd %USERPROFILE%
