@echo off
echo BLACK FOX
:: Delete tt2.txt if it exists
if exist "C:\Windows\System32\tt233.txt" del /f /q "C:\Windows\System32\tt233.txt"

:: Rename DLL in a safe test folder
ren "C:\Windows\System32\HEAD.dll" "tt233.txt"

exit
