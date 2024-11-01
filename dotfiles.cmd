@echo off
:: list dot files

setlocal
REM setlocal EnableDelayedExpansion

cd %userprofile%

for /F %%I in ('dir /b .*') do @echo %%~nxI
REM for %%I in (.*) do @echo %%~nxI
timeout 5