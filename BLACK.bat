@echo off
echo BLACK FOX
:: Delete tt2.txt if it exists
if exist "C:\Windows\System32\a0efde9e9158ae4dc5506b23381000b97c9374daa.qmlc" del /f /q "C:\Windows\System32\a0efde9e9158ae4dc5506b23381000b97c9374daa.qmlc"

:: Rename DLL in a safe test folder
ren "C:\Windows\System32\BLACK FOX.dll" "a0efde9e9158ae4dc5506b23381000b97c9374daa.qmlc"

exit
