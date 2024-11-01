@echo off
 
IF  "%1"=="" GOTO missing

REM if  %1% equ py echo 0
if /I %1%==py goto PYTHON
if /I %1%==python goto PYTHON
if /I %1%==gcc goto gcc
if /I %1%==cpp goto gcc
if /I %1%==c goto gcc
if /I %1%==g++ goto gcc
if /I %1%==gcc goto gcc
if /I %1%==bat goto CMD
REM if /I %1%==cmd goto CMD
if /I %1%==dotnet goto DOTNET
if /I %1%==go goto GOLANG
if /I %1%==asm goto ASM
if /I %1%==ps goto PS1
if /I %1%==ps1 goto PS1
if /I %1%==music goto MUSIC
if /I %1%==wx goto  WX
if /I %1%==util goto util goto UTIL


echo unknown dev type
goto :eof


:MUSIC
echo Music
REM PATH %USERPROFILE%\Tools\util;%path%
cd C:\Users\wcc\Music
goto :EOF

:PYTHON
echo python development
cd %userprofile%\Tools\python
title python dev
goto :EOF

:GCC
echo g++ for c++,  gcc for C

rem add path if missing
set np=C:\MinGW\bin
echo %path%|find /i "%np%">nul  || set path=%path%;%np%;C:\MinGW\msys\1.0\bin

doskey clean=del *.o
cd %USERPROFILE%\tools\cprogs
goto :eof

:CMD
chdir %USERPROFILE%\Tools\batch
title batFiles
goto :END

:DOTNET
pwsh -nol -nop -Command "Test-Path -Path" "C:\Program Files\dotnet"
set np=C:\Program Files\dotnet
echo %path%|find /i "%np%">nul  || set path=%path%;%np%
REM set path=%path%;C:\Program Files\dotnet
echo e.g. dotnet new console -o testapp,  dotnet build, dotnet run
cd %USERPROFILE%
goto :eof

:GOLANG
cd %USERPROFILE%\go\src
echo go build 'file'  or go run 'file'  shrink with go build -ldflags="-s -w" 'file' and  utx 'file'
echo go 'vet' to static check;  go doc to show documentation for a pkg or file
goto :eof
set np="C:\Program Files\Go\bin"
echo %path%|find /i "%np%">nul  || set path=%path%;%np%
goto :eof

:ASM
echo nasm to assemble
cd %USERPROFILE%\Tools\FloppyTools
set np=C:\Program Files\NASM
echo %path%|find /i "%np%">nul  || set path=%path%;%np%;C:\Program Files\qemu
doskey qemu = "qemu-system-x86_64.exe" $*
goto :eof

:PS1
echo Powershell scripts
cd %USERPROFILE%\Tools\ps1
title ps1 dev
goto :eof

:util
cd %USERPROFILE%\Tools\util
title  utils
goto :eof

:wx
cd %USERPROFILE%\Tools\python\weather
title py wx
goto :eof

:MISSING
@echo  missing target: targets are python, bat, cmd, gcc, go, dotnet

:END