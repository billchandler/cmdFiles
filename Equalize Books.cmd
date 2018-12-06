@echo off

ping -n 1 Adam
if  ERRORLEVEL 1 title no access to Adam & goto LAST

title Copy to Adam
robocopy /FP /XN /s  %USERPROFILE%\Documents\Books  \\Adam\f\wcc\Documents\Books

title Copy from Adam
robocopy /FP /XO /s \\Adam\f\wcc\Documents\Books %USERPROFILE%\Documents\Books

title Copy to ReadyShare
rem exclude newer and older files

:LAST
robocopy /FP /XN /XO /s  %USERPROFILE%\Documents\Books  \\READYSHARE\USB_Storage\Books

rem macos artifact
del %USERPROFILE%\Documents\Books\.DS_Store

TIMEOUT /T 15 

exit
rem Pin a bat file to win 10 start menu ...
rem this is a kludge work around that Microsoft needs to fix but it worked for me.
rem  Temporatly rename the .bat file to .exe. Then right cicking on the file name 
rem will give you th Pin to start option. Pin it to the start menu. 
rem It won't work but thre is a option open the file location. 
rem Select that and change the name back via its properties to .bat. Now it works.

