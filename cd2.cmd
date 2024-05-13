@echo off
:: script to better simulate what bash cd does: 'cd' go to home dir;   'cd -'   goto last dir
:: Bill Chandler 5/13/2024
:: doskey cd="%USERPROFILE%\Tools\batch\cd2.cmd" $*

rem this needed to be here and not below
set "zpresentdir=%CD%"

if "%~1"=="" goto blank
IF %1==.. GOTO UP
IF %1==- GOTO BACK

rem cd to given location

set "zlastdir=%CD%"
cd /d %1    
goto :display

:BACK
if not defined zlastdir (
    @echo zlastdir Not defined
    goto :eof
) else (
    REM set zpresentdir=%CD%        rem didn't work if here

    cd %zlastdir% 
    set zlastdir=%zpresentdir%
    goto :display
)

:UP
set "zlastdir=%CD%"
cd ..
goto :display

:BLANK
set "zlastdir=%CD%"
cd /d %USERPROFILE%
goto :display

:pr
@echo zpresentdir  %zpresentdir%
@echo zlastdir  %zlastdir%
goto :eof

:display
for %%f in ("%CD%") do set LastPartOfFolder=%%~nf
title %LastPartOfFolder%