#!/usr/bin/env bash
# Installiert/aktualisiert den stgallen-cd Skill auf User-Ebene
# (~/.claude/skills/stgallen-cd), damit er in allen Projekten
# auf dieser Maschine automatisch verfügbar ist.
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SRC="$SCRIPT_DIR/.claude/skills/stgallen-cd"
DEST="$HOME/.claude/skills/stgallen-cd"

if [ ! -d "$SRC" ]; then
  echo "Fehler: Quelle nicht gefunden: $SRC" >&2
  exit 1
fi

mkdir -p "$HOME/.claude/skills"
rm -rf "$DEST"
cp -r "$SRC" "$DEST"

echo "Skill installiert: $DEST"
