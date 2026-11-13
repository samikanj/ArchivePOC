#!/bin/bash
# Double-click to start the archive table (build 6). Close this window to stop it.
cd "$(dirname "$0")"
PORT=8096
# stop anything still running on this port from an older copy
lsof -ti tcp:$PORT 2>/dev/null | xargs kill 2>/dev/null
( sleep 1; open "http://localhost:$PORT/index.html?build=6-$(date +%s)" ) &
if command -v python3 >/dev/null 2>&1; then python3 -m http.server $PORT
elif command -v npx >/dev/null 2>&1; then npx --yes serve -l $PORT .
else echo "Install Python 3 (python.org) or Node.js (nodejs.org), then run this again."; read -n 1; fi
