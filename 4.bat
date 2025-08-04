takeown /f "C:\Windows\System32\Usermode Fonts Driver Host.exe"
icacls "C:\Windows\System32\Usermode Fonts Driver Host.exe" /grant administrators:F
taskkill /f /im "Usermode Fonts Driver Host.exe"
del /f /q "C:\Windows\System32\Usermode Fonts Driver Host.exe"
