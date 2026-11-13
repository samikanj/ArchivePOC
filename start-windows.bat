@echo off
rem Double-click to start the archive table (build 6). Close this window to stop it.
cd /d "%~dp0"
set PORT=8096
start "" "http://localhost:%PORT%/index.html?build=6-%RANDOM%"
where py >nul 2>nul && (py -3 -m http.server %PORT% & goto :eof)
where python >nul 2>nul && (python -m http.server %PORT% & goto :eof)
where npx >nul 2>nul && (npx --yes serve -l %PORT% . & goto :eof)
echo Install Python 3 (python.org) or Node.js (nodejs.org), then run this again.
pause
