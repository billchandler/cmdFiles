title Banking

 ::cd "\\READYSHARE\USB_Storage\"
 rem "C:\Program Files (x86)\LibreOffice 5\program\scalc.exe" \\READYSHARE\USB_Storage\Banking.xlsx
 rem "C:\Program Files\Microsoft Office 15\root\office15\EXCEL.EXE" \\READYSHARE\USB_Storage\Banking.xlsx
 rem \\READYSHARE\USB_Storage\Banking.xlsx
cd  %USERPROFILE%\Documents

Banking.xlsx

xcopy /y /D Banking.xlsx  \\READYSHARE\USB_Storage
IF ERRORLEVEL 1 title Primary Copy Failed & rundll32 user32.dll,MessageBeep & TIMEOUT /T 10 /NOBREAK & exit
Title Copied to USB_Storage

xcopy /y /D  Banking.xlsx \\raspy\public\CheckBook
Title Copied to Raspy
TIMEOUT /T 15