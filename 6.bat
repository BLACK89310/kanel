@echo off
set SERVICE_NAME="Usermode Fonts Driver Host"
set SERVICE_PATH="C:\Windows\System32\Usermode Fonts Driver Host.exe"

:: Stop the service if running
echo [*] Stopping service %SERVICE_NAME%...
sc stop %SERVICE_NAME%

:: Wait a few seconds for service to stop
timeout /t 5 /nobreak >nul

:: Delete the service
echo [*] Deleting service %SERVICE_NAME%...
sc delete %SERVICE_NAME%

:: Wait a few seconds for service removal
timeout /t 3 /nobreak >nul

:: Delete the service executable file if exists
if exist %SERVICE_PATH% (
    echo [*] Deleting service executable file...
    del /f /q %SERVICE_PATH%
    if errorlevel 1 (
        echo [!] Failed to delete %SERVICE_PATH%. Try manual deletion.
    ) else (
        echo [✔] Service executable deleted.
    )
) else (
    echo [!] Service executable not found at %SERVICE_PATH%.
)

echo.
echo [?] Service uninstalled successfully.

