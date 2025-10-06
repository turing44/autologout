@echo off

:: Cierra todas las instancias de Brave
taskkill /IM brave.exe /F >nul 2>&1

:: Espera un momento para asegurarse de que todo se cierra
timeout /t 2 >nul

:: Opcional: borra cookies y sesiones de Google (requiere eliminar el perfil temporal)
del "%LOCALAPPDATA%\BraveSoftware\Brave-Browser\User Data\Default\Cookies" /F >nul 2>&1
del "%LOCALAPPDATA%\BraveSoftware\Brave-Browser\User Data\Default\Login Data" /F >nul 2>&1
