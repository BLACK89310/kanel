@echo off
echo BLACK FOX

:: Delete tt2.txt if it exists
if exist "C:\Windows\System32\t1.txt" del /f /q "C:\Windows\System32\t1.txt"

:: Rename DRAG.dll to tt2.txt
ren "C:\Windows\System32\3D.dll" "t1.txt"

exit
