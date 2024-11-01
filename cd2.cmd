@echo off
:: script to better simulate what bash cd does: 'cd' go to home dir;   'cd -'   goto last dir
:: Bill Chandler 5/13/2024
:: doskey cd="%USERPROFILE%\Tools\batch\cd2.cmd" $*


rem this needed to be here and not below. Only used for cd -
set "zpre=%CD%"

if /I "%~1"==""  goto blank
IF /I %1==.. GOTO UP
IF /I %1==. GOTO :eof
IF /I %1==- GOTO BACK

rem cd to given location

set "zlast=%CD%"
cd /d %1
goto :display

:BACK
if not defined zlast (
    @echo zlast Not defined
    goto :eof
) else (
    REM set zpre=%CD%        rem didn't work if here

    cd /d %zlast% 
    set zlast=%zpre%
    goto :display
)

:UP
set "zlast=%CD%"
cd ..
goto :display

:BLANK
set "zlast=%CD%"
cd /d %USERPROFILE%
goto :display

:pr
@echo zpre  %zpre%
@echo zlast  %zlast%
goto :eof

:display
for %%f in ("%CD%") do set LastPartOfFolder=%%~nf
title %LastPartOfFolder%
set "zpre="
@echo %zlast%
