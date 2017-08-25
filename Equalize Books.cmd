title Copy to Adam
robocopy /FP /XN /s  %USERPROFILE%\Documents\Books  \\Adam\f\wcc\Documents\Books

title Copy from Adam
robocopy /FP /XO /s \\Adam\f\wcc\Documents\Books %USERPROFILE%\Documents\Books

pause