@echo off

PATH=C:\Mingw\bin;C:\WINDOWS;C:\WINDOWS\system32;C:\tools\batch;F:\tools\util;

::C:\Tools\gnuplot\bin;
::set JAVA_HOME="C:\Program Files\Java\jdk1.5.0_06"
::set DIRCMD=/Odgne
set WCDHOME=C:\
set EDITOR=notepad
@echo gcc for c,  g++ for c++
::@echo for Java   java-dev to set environment, javac to compile
@echo strip --strip-all SOMEBINARY.exe    to reduce file size
doskey el="C:\Program Files\Notepad++\notepad++.exe"   c:\tools\Mingw.bat
doskey ue="\\ccanet\approot\served\apps\Ultraedit32\uedit32.exe" $*
doskey dr=dir /od
doskey desktop=cd C:\Documents and Settings\wcchandl\Desktop
