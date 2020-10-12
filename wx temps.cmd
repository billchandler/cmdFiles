@echo off

setlocal
rem specify the weather station here:  KCID is Cedar Rapids, KDSM is Des Moines
rem see http://www.airportcodes.aero/-/airport-designators put the 'K' in front
rem reports update on an hourly basis
set DATA=KCID.TXT
mode con: cols=95 lines=22

if exist %DATA% del /q %DATA%*


if Not exist C:\Windows\system32\curl.exe goto PS
  curl  ftp://tgftp.nws.noaa.gov/data/observations/metar/decoded/%DATA% -o %DATA%
  goto SKIP
  
  
REM if Not exist %USERPROFILE%\Tools\UTIL\wget.exe goto PS
  REM %USERPROFILE%\Tools\UTIL\wget -q ftp://tgftp.nws.noaa.gov/data/observations/metar/decoded/%DATA%
  REM goto SKIP

:PS 
powershell -Command "(New-Object Net.WebClient).DownloadFile('ftp://tgftp.nws.noaa.gov/data/observations/metar/decoded/%DATA%', '%DATA%')"

:SKIP

rem for /f "tokens=1,2" %%a in ('powershell -Command "(New-Object Net.WebClient).DownloadString('ftp://tgftp.nws.noaa.gov/data/observations/metar/decoded/KCID.TXT')"  ^|  find /I "Temp"') do (title %%a %%b F)
rem http://w1.weather.gov/obhistory/KCID.html

rem http://www.robvanderwoude.com/ansi.php#AnsiColor


type %DATA%
echo.


echo [2A
echo [1;33m
echo [1m

type %DATA% |  %USERPROFILE%\Tools\UTIL\grep -E "Dew|Temp" 
echo. 

rem for /f "tokens=1,2" %%a in ('type %DATA% ^|  find /I "Temp"') do (title %%a %%b F)
 for /f "tokens=1,2" %%a in ('type %DATA% ^|  find /I "Temp"') do (set AA=%%b )
 for /f "tokens=2,3" %%a in ('type %DATA% ^|  find /I "Dew"') do (set BB=%%b )


rem @echo %BB%
set CC=%AA%  Dew Point %BB%F

rem @echo %CC%
title Temperature %CC%

 echo [3A
 echo [0m

rem for /f "tokens=2,3" %%a in ('type %DATA% ^|  find /I "Dew"') do (title %%a %%b F)

REM using TERMINAL to indicate that the cmd window was set by a cmd file that launched the window
REM  e.g. see bill.cmd that I use as a startup cmd file 
REM  C:\Windows\System32\cmd.exe /k "C:\Users\wcc\Tools\batch\bill.cmd"
IF "%TERMINAL%"=="" timeout 13
REM if %TERMINAL%=="WINDOWS" timeout 1

del %DATA%*

endlocal

