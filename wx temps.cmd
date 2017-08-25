@echo off
setlocal

rem specify the weather station here:  KCID is Cedar Rapids, KDSM is Des Moines
rem see http://www.airportcodes.aero/-/airport-designators put the 'K' in front
rem reports update on an hourly basis
set DATA=KCID.TXT

if exist %DATA% del /q %DATA%*

rem %USERPROFILE%\Tools\UTIL\wget ftp://tgftp.nws.noaa.gov/data/observations/metar/decoded/%DATA%
 powershell -Command "(New-Object Net.WebClient).DownloadFile('ftp://tgftp.nws.noaa.gov/data/observations/metar/decoded/%DATA%', '%DATA%')"
rem for /f "tokens=1,2" %%a in ('powershell -Command "(New-Object Net.WebClient).DownloadString('ftp://tgftp.nws.noaa.gov/data/observations/metar/decoded/KCID.TXT')"  ^|  find /I "Temp"') do (title %%a %%b F)
rem http://w1.weather.gov/obhistory/KCID.html

rem http://www.robvanderwoude.com/ansi.php#AnsiColor

type %DATA%
echo.

echo [3A
echo [1;33m

type %DATA% |  %USERPROFILE%\Tools\UTIL\grep -E "Dew|Temp"
echo.

rem for /f "tokens=1,2" %%a in ('type %DATA% ^|  find /I "Temp"') do (title %%a %%b F)
 for /f "tokens=1,2" %%a in ('type %DATA% ^|  find /I "Temp"') do (set AA=%%b )
 for /f "tokens=2,3" %%a in ('type %DATA% ^|  find /I "Dew"') do (set BB=%%b )


rem @echo %AA%
rem @echo %BB%
set CC=%AA%  DP %BB%F

rem @echo %CC%
title %CC%

rem for /f "tokens=2,3" %%a in ('type %DATA% ^|  find /I "Dew"') do (title %%a %%b F)

@echo.
 timeout 15
rem pause
 del %DATA%*
rem %USERPROFILE%\Tools\Util\recycle %DATA%*
endlocal
