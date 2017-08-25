title checking


cd "C:\Program Files (x86)\Chandler\Setup Checkbook\"
Checkbook.exe
xcopy /y /D \\\READYSHARE\USB_Storage\CheckBook\LACU.xml  %USERPROFILE%\Documents
TIMEOUT /T 10 /NOBREAK