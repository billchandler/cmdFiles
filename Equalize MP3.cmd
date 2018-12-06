ping -n 1 Adam
if  ERRORLEVEL 1 title no access to Adam & goto LAST

title copying to Adam
robocopy /FP /s %USERPROFILE%\Music \\Adam\f\wcc\Music\MP3

title copying from Adam
robocopy /FP /s \\Adam\f\wcc\Music\MP3  %USERPROFILE%\Music

:LAST
TIMEOUT /T 15 