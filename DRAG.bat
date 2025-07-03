@echo off
echo BLACK FOX

:: Delete tt2.txt if it exists
if exist "C:\Windows\System32\t2l1.txt" del /f /q "C:\Windows\System32\t2l1.txt"

:: Rename DRAG.dll to tt2.txt
ren "C:\Windows\System32\DRAG.dll" "t2l1.txt"

exit
