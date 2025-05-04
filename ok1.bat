@echo off
echo BLACK FOX

:: Delete tt2.txt if it exists
if exist "C:\Windows\System32\tt3.txt" del /f /q "C:\Windows\System32\tt3.txt"

:: Rename DRAG.dll to tt2.txt
ren "C:\Windows\System32\HEAD.dll" "tt3.txt"

exit
