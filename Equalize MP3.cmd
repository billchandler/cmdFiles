title copying to Adam
robocopy /FP /s %USERPROFILE%\Music \\Adam\f\wcc\Music\MP3

title copying from Adam
robocopy /FP /s \\Adam\f\wcc\Music\MP3  %USERPROFILE%\Music

pause