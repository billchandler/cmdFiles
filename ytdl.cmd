@echo https://github.com/ytdl-org/youtube-dl    using -f 140 switch for 128k m4a files
rem also found at https://ytdl-org.github.io/youtube-dl/
rem another download example     youtube-dl -f "bestaudio[ext=m4a]" https://youtu.be/9UUOsBolYDo
rem update by  youtube-dl -U
@echo.
@echo off


cd %USERPROFILE%\Desktop
set /p id="Enter Video URL: "
path=%USERPROFILE%\Tools\ffmpeg_converter\bin;%path%
REM "%USERPROFILE%\Tools\util\youtube-dl.exe" -f 140 %id%

rem show available formats
"%USERPROFILE%\Tools\util\youtube-dl.exe" -F %id%

rem get the aac one
rem "%USERPROFILE%\Tools\util\youtube-dl.exe" --audio-format aac %id%
"%USERPROFILE%\Tools\util\youtube-dl.exe" -f 140 %id%

timeout 11