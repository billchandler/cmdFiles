@echo off
 
REM setlocal ENABLEDELAYEDEXPANSION 

IF  "%1"=="" GOTO missing

REM if  %1% equ py echo 0
if %1%==py goto PYTHON
if %1%==python goto PYTHON
if %1%==gcc goto gcc
if %1%==cpp goto gcc
if %1%==c goto gcc
if %1%==g++ goto gcc
if %1%==bat goto CMD
if %1%==cmd goto CMD
if %1%==dotnet goto DOTNET
if %1%==go goto GOLANG
if %1%==asm goto ASM

echo unknown dev type
goto :eof

:PYTHON
echo python development
PATH %USERPROFILE%\Tools\util;C:\Python38\Scripts\;C:\Python38\;C:\WINDOWS\system32;C:\WINDOWS;C:\WINDOWS\System32\Wbem;C:\WINDOWS\System32\WindowsPowerShell\v1.0\;C:\Program Files\TortoiseHg;C:\Windows\System32\OpenSSH;C:\Users\wcc\AppData\Local\Programs\Microsoft VS Code;
cd %userprofile%\Tools\python
doskey pydoc="C:\Python37\Lib\Pydoc.py" $*ss=cd C:\Users\wcc

goto :EOF

:GCC
echo g++ for c++,  gcc for C
PATH %USERPROFILE%\Tools\util;C:\MinGW\bin;C:\WINDOWS\system32;C:\WINDOWS;C:\WINDOWS\System32\Wbem;C:\WINDOWS\System32\WindowsPowerShell\v1.0\;C:\Program Files\TortoiseHg;C:\Windows\System32\OpenSSH;C:\Users\wcc\AppData\Local\Programs\Microsoft VS Code;C:\MinGW\msys\1.0\bin
doskey clean=del *.o
cd %USERPROFILE%\tools
goto :eof

:CMD
PATH %USERPROFILE%\Tools\util;%USERPROFILE%\Tools\batch;C:\Python37\Scripts\;C:\Python37\;C:\WINDOWS\system32;C:\WINDOWS;C:\WINDOWS\System32\Wbem;C:\WINDOWS\System32\WindowsPowerShell\v1.0\;C:\Program Files\TortoiseHg;C:\Windows\System32\OpenSSH;C:\Users\wcc\AppData\Local\Programs\Microsoft VS Code;
cd %userprofile%\Tools\batch
goto :eof

:DOTNET
set path=%path%;C:\Program Files\dotnet
echo e.g. dotnet new console -o testapp,  dotnet build, dotnet run
goto :eof

:GOLANG
cd %USERPROFILE%\go\src
echo go build 'file'
goto :eof
path c:\go\bin;%USERPROFILE%\Tools\util;C:\Python38\Scripts\;C:\Python38\;C:\WINDOWS\system32;C:\WINDOWS;C:\WINDOWS\System32\Wbem;


:ASM
echo nasm to assemble
path C:\Program Files\NASM;%USERPROFILE%\Tools\util;C:\Python38\Scripts\;C:\Python38\;C:\WINDOWS\system32;C:\WINDOWS;C:\WINDOWS\System32\Wbem;
cd %USERPROFILE%\Tools\FloppyTools
goto :eof

:MISSING
@echo  missing target: targets are python, bat, cmd, gcc, go, dotnet



