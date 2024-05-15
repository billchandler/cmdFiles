@echo off
rem last edits, Bill C. 5/13/2024
REM to auto invoke    cmd.exe /k %USERPROFILE%/Tools/batch/bill2.cmd


::REM editors ......................
doskey el=%ED% %~dpnx0
doskey ec=%ED% C:\Users\wcc\AppData\Local\clink\clink_settings
doskey subl="C:\Program Files\Sublime Text\subl.exe" $*

IF EXIST "C:\Program Files\Notepad++\notepad++.exe" (
        set ED="C:\Program Files\Notepad++\notepad++.exe"
        doskey npp = "C:\Program Files\Notepad++\notepad++.exe" $*
    ) ELSE (
        set ED=notepad.exe
    )
@echo 'npp' notepad++,  'subl' sublime text,  micro terminal editor

:: misc
path=%path%;%USERPROFILE%\Tools\Util;
doskey dr=dir /od $*
doskey env=set
doskey h="C:\Users\wcc\Tools\installs\clink\clink_x64.exe" history $*
doskey lo=exit
doskey alias=doskey /macros 

:: cd stuff ........................
doskey cd="%USERPROFILE%\Tools\batch\cd2.cmd" $*
REM doskey cd="%USERPROFILE%\Tools\util\cc.cmd" $*
REM doskey cd="C:\Users\wcc\tools\installs\cd-deluxe-master\Release\cdd.cmd" $*
doskey cdd="C:\Users\wcc\tools\installs\cd-deluxe-master\Release\cdd.cmd" $*
set cdx="%USERPROFILE%\Tools\util\cdx.cmd $*"
doskey hh=%cdx% ~
doskey hh=chdir %userprofile% & title ~
REM doskey cd="C:\Program Files (x86)\Cd Deluxe\cdd.cmd" $*


:: weather defs .................
doskey wx="%USERPROFILE%\tools\python\wx3.py" $*
doskey wxf="%USERPROFILE%\tools\python\wx_forecast.py" $*
doskey many="%USERPROFILE%\tools\python\many.cmd"
doskey wxs="%USERPROFILE%\tools\python\wxSynoptic.py " $*
doskey wxff="%USERPROFILE%\Documents\Visual Studio 2022\Projects\getWxForecast\bin\Release\net6.0-windows\publish\getWxForecast.exe" $*
rem https://wttr.in/:help
doskey wxx=curl https://wttr.in/KCID?n
REM doskey wxa="%USERPROFILE%\tools\python\wxAccuWx.py" $*
doskey wxg="%USERPROFILE%\go\src\getwxjson\getwx.exe" $*
doskey rain="%USERPROFILE%\tools\python\rain.py" $*
doskey tmps="%USERPROFILE%\tools\python\concurRain.py" $*

doskey news="%USERPROFILE%\tools\python\news.py" $*
doskey hacker="%USERPROFILE%\tools\python\hacker.py" $*
doskey obits="%USERPROFILE%\tools\python\obits.py" $*
doskey id3="%USERPROFILE%\tools\python\findId3.py" $*
doskey djia="%USERPROFILE%\tools\python\djia.py" $*
doskey ls="C:\Users\wcc\tools\installs\cmder\vendor\git-for-windows\usr\bin\ls" $*
doskey sun="%USERPROFILE%\tools\python\sun.py" $*
doskey ham="%USERPROFILE%\tools\python\ham.py" $*

doskey ytdl="%USERPROFILE%\Tools\python\getYT.py" $*
doskey choco=c:\ProgramData\chocolatey\bin\choco.exe $*

doskey name="%USERPROFILE%\Tools\BATCH\setdev.cmd"  $*
doskey syn="C:\Users\wcc\Documents\Visual Studio 2019\Projects\Synonyms\bin\Debug\net7.0\Synonyms.exe" $*
REM doskey norm="C:\Users\wcc\Tools\ffmpeg_converter\bin\ffmpeg.exe" -nt peak -t 0 -c:a aac -b:a 128K

doskey tagit="C:\Users\wcc\Documents\Visual Studio 2022\Projects\TagEdit\bin\Debug\net6.0\tagedit.exe" $*

rem assumes its running the choco version
doskey mpv=mpv  --geometry=20%%+20+20/2  "$*"

rem kasa plug
doskey tpl="%USERPROFILE%\tools\python\tpl.py" $*
doskey notes="%USERPROFILE%\tools\python\notesXml.py" $*
doskey path=powershell -noprofile  -Command ($env:Path).split(';')
doskey bbox=%userprofile%%\tools\busybox.exe sh -l

C:\Users\wcc\Tools\installs\clink\clink_x64.exe inject

rem clink examples :
rem clink set history.dont_add_to_history_cmds exit lo dir dr ls h el
rem clink set history.time_stamp show
rem clink set history.time_format "%D %R "
rem clink set history.time_format "%m/%d %R "

rem new windows terminal location
REM Directory of C:\Users\wcc\AppData\Local\hg commit -mrosoft\WindowsApps
REM 06/23/2019  08:19 AM                 0 wt.exe

rem for windows terminal, can put jpg's in C:\Users\wcc\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\RoamingState
