@echo off
PATH C:\Program Files\Python36\Scripts\;C:\Program Files\Python36\;C:\WINDOWS\system32;C:\WINDOWS;C:\WINDOWS\System32\Wbem;C:\WINDOWS\System32\WindowsPowerShell\v1.0\;%USERPROFILE%\Tools\util;%USERPROFILE%\Tools\BATCH;C:\MinGW\bin;"C:\Program Files\TortoiseHg"


IF EXIST "C:\Program Files\Notepad++\notepad++.exe" (
        set ED="C:\Program Files\Notepad++\notepad++.exe"
    ) ELSE (
        set ED=notepad.exe
    )

IF EXIST "C:\Program Files (x86)\IDM Computer Solutions\UltraEdit\Uedit32.exe" (
        set UE="C:\Program Files (x86)\IDM Computer Solutions\UltraEdit\Uedit32.exe"
    ) 

rem C:\WINDOWS\system32\doskey vim="C:\Program Files (x86)\Vim\vim72\gvim.exe" $*

rem C:\WINDOWS\system32\doskey el="C:\Program Files\Notepad++\notepad++.exe"  "%USERPROFILE%\Tools\BATCH\bill.cmd"

REM set SUBLIME="%USERPROFILE%\Sublime Text Build 3143 x64"
doskey el=%ED% %~dpnx0
doskey dr=dir /od
doskey edit=%ED% $*
doskey wxx= "C:\Users\wcc\Tools\python\wx.py" $*
doskey wx= "C:\Users\wcc\Tools\batch\wx temps.cmd" $*
rem doskey subl="C:\Users\wcc\Tools\Sublime Text Build 3143 x64\subl.exe"

@echo   npp notepad++

cd %USERPROFILE%