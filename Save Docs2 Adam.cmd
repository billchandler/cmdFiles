title Copy to Adam Pictures
robocopy /FP /s  %USERPROFILE%\Pictures  \\Adam\f\wcc\Pictures    /XD "Moses Pictures"
title Copy to Adam Documents
robocopy /FP /s  %USERPROFILE%\Documents  \\Adam\f\wcc\Documents  /XD "Movie Studio Platinum 12.0 Projects" "Virtual Machines" "obj" "Debug"

pause