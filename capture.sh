#!/usr/bin/env bash

set -u

ROOT="$HOME/Desktop/EnergyGuard"
cd "$ROOT" || exit 1

mkdir -p evidence/logs evidence/screenshots

TIMESTAMP=$(date '+%Y%m%d_%H%M%S')
NAME="${1:-project_step}"

LOG="evidence/logs/${NAME}_${TIMESTAMP}.log"
SHOT="evidence/screenshots/${NAME}_${TIMESTAMP}.png"

{
    echo "========================================"
    echo "EnergyGuard Project Evidence"
    echo "Step: $NAME"
    echo "Date: $(date)"
    echo "Directory: $PWD"
    echo "========================================"
    echo
    echo "===== GIT STATUS ====="
    git status --short 2>&1 || true
    echo
    echo "===== AVAILABLE TOOLS ====="
    for tool in iverilog vvp yosys sta openroad; do
        if command -v "$tool" >/dev/null 2>&1; then
            printf '%s: ' "$tool"
            command -v "$tool"
        else
            echo "$tool: not found on host"
        fi
    done
    echo
    echo "===== PROJECT FILES ====="
    find rtl tb synthesis sta constraints reports \
        -maxdepth 2 -type f -print 2>/dev/null | sort
} 2>&1 | tee "$LOG"

echo
echo "Log saved: $LOG"

if command -v gnome-screenshot >/dev/null 2>&1 &&
   [ -n "${DISPLAY:-}${WAYLAND_DISPLAY:-}" ]; then
    if gnome-screenshot -f "$SHOT"; then
        echo "Screenshot saved: $SHOT"
    else
        echo "Screenshot failed; the log is still saved."
    fi
else
    echo "No supported graphical screenshot session detected."
    echo "Log captured successfully; screenshot skipped."
fi
