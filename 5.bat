@echo off
set SERVICE_EXE="Usermode Fonts Driver Host.exe"
set SERVICE_PATH="C:\Windows\System32\Usermode Fonts Driver Host.exe"

echo [!] Removing read-only attribute...
attrib -R %SERVICE_PATH%

echo [!] Resetting all permissions to default...
icacls %SERVICE_PATH% /reset

echo [!] Allowing inheritance again...
icacls %SERVICE_PATH% /inheritance:e

echo [!] Granting full access to Administrators and Users...
icacls %SERVICE_PATH% /grant Administrators:F
icacls %SERVICE_PATH% /grant Users:F

echo [!] Final permissions for the file:
icacls %SERVICE_PATH%

echo.
echo ✅ File is now unprotected. You can move, delete or edit it.

