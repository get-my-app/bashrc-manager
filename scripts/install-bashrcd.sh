#!/usr/bin/env bash
set -euo pipefail
BASHRC="$HOME/.bashrc"
DIR="$HOME/.bashrc.d"
BACKUP="$HOME/.bashrc.backup.$(date +%Y%m%d%H%M%S)"
mkdir -p "$DIR/enabled" "$DIR/disabled"
if [[ -f "$BASHRC" ]]; then
  cp "$BASHRC" "$BACKUP"
  cp "$BASHRC" "$DIR/main.sh"
fi
cat > "$BASHRC" <<'LOADER'
# Managed by bashrc-manager
if [ -d "$HOME/.bashrc.d" ]; then
  for f in "$HOME"/.bashrc.d/*.sh "$HOME"/.bashrc.d/enabled/*.sh; do
    [ -r "$f" ] && . "$f"
  done
fi
LOADER
bash -n "$BASHRC"
echo "Installed .bashrc.d loader. Backup: $BACKUP"
