#!/usr/bin/env sh
set -eu

PORT="${PORT:-8000}"

if command -v python3 >/dev/null 2>&1; then
  exec python3 -m http.server "$PORT" --bind 0.0.0.0
elif command -v python >/dev/null 2>&1; then
  exec python -m http.server "$PORT" --bind 0.0.0.0
else
  echo "Python is required to serve static files." >&2
  exit 1
fi
