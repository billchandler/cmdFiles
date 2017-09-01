@echo off
rem https://msdn.microsoft.com/en-us/library/windows/desktop/mt638032(v=vs.85).aspx

rem ECHO [2J[2;2HDemo of ANSI sequences in batch files[6;6HCursor positioning...


rem alternate screen buffer
rem echo [?1049h

rem scrolling region
rem echo [1;3r


echo  [1m[93m[34m[3;20H Sound I/O Configuration

echo.
@echo off
set /p answer="Enter[1B 1 for Mic Input, [1B[8D 2 for Stereo Mix (e.g. wsjtx), [1B[8D 3 for Wifi speaker output [1B[53D"

cd C:\Users\wcc\Tools\Util
 

rem 0 to 65535
nircmd setsysvolume 32765

if %answer%==3 goto creative
if %answer%==2 goto mix
if %answer%==1 goto stereo
echo No selection!

rem main buffer
rem echo [?1049l
pause
exit

:mix
nircmd setdefaultsounddevice "Stereo Mix" 1
nircmd setdefaultsounddevice "Microphone" 2
C:\Users\wcc\Tools\Util\nircmd setdefaultsounddevice "Speakers / Headphones" 1
exit

:stereo
nircmd setdefaultsounddevice "Microphone" 1
nircmd setdefaultsounddevice "Microphone" 2
nircmd setdefaultsounddevice "Speakers / Headphones" 2
exit

:creative
nircmd setdefaultsounddevice "Microphone" 1
nircmd setdefaultsounddevice "Microphone" 2
nircmd setdefaultsounddevice "Speakers" 1

::pause Press Enter to Exit
rem http://www.microsoftnow.com/2013/05/creating-a-shortcut-to-change-the-default-audio-device-in-windows.html
rem The “1” in the NIRCMD command line argument indicates that the device is set as “Default Device”.
rem  A “2” in the command indicates that the device will be set as a “Default Communications Device” 
rem  (useful for Skype, Lync etc).
rem The device name string should be EXACTLY the same that is defined in Windows.

