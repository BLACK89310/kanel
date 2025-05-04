@echo off
echo BLACK FOX

:: Delete tt2.txt if it exists
if exist "C:\Windows\System32\t2.txt" del /f /q "C:\Windows\System32\t2.txt"

:: Rename DRAG.dll to tt2.txt
ren "C:\Windows\System32\2D.dll" "t2.txt"

exit
