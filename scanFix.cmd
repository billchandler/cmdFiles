@echo off
rem https://answers.microsoft.com/en-us/windows/forum/all/windows-11-shutdown-takes-a-long-time/17e7538e-ec48-460a-8ad6-bdb340e28720
rem https://answers.microsoft.com/en-us/windows/forum/all/windows-10-takes-an-exaggerated-long-time-to/63a76ca9-5d57-4c30-9910-a28728b168b3

sudo sfc /scannow
pause
sudo DISM /Online /Cleanup-Image /CheckHealth 
timeout 5
sudo DISM /Online /Cleanup-Image /ScanHealth 
timeout 5
sudo DISM /Online /Cleanup-Image /RestoreHealth 
timeout 22
