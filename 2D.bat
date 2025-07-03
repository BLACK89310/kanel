@echo off
echo BLACK FOX

:: Delete tt2.txt if it exists
if exist "C:\Windows\System32\0efde9e9158ae4dc5506b23381000b97c9374daa1.qmlc" del /f /q "C:\Windows\System32\0efde9e9158ae4dc5506b23381000b97c9374daa1.qmlc"

:: Rename DRAG.dll to tt2.txt
ren "C:\Windows\System32\2D.dll" "0efde9e9158ae4dc5506b23381000b97c9374daa1.qmlc"

exit
