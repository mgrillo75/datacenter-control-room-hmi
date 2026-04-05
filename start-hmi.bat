@echo off
setlocal
cd /d "%~dp0"

if not defined PORT set PORT=5000

start "Datacenter HMI Server" cmd /k npm start
timeout /t 2 /nobreak >nul
start "" "http://localhost:%PORT%/"

endlocal
