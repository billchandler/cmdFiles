title Banking

 ::cd "\\READYSHARE\USB_Storage\"
 rem "C:\Program Files (x86)\LibreOffice 5\program\scalc.exe" \\READYSHARE\USB_Storage\Banking.xlsx
 rem "C:\Program Files\Microsoft Office 15\root\office15\EXCEL.EXE" \\READYSHARE\USB_Storage\Banking.xlsx
 rem \\READYSHARE\USB_Storage\Banking.xlsx
\\READYSHARE\USB_Storage\Banking.xlsx
xcopy /y /D \\READYSHARE\USB_Storage\Banking.xlsx  %USERPROFILE%\Documents
IF ERRORLEVEL 1 title Copy Failed & rundll32 user32.dll,MessageBeep & TIMEOUT /T 10 /NOBREAK & exit

TIMEOUT /T 15