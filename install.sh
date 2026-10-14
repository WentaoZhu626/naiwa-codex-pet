#!/usr/bin/env bash
# 奶蛙大笑 Codex Pet installer (macOS / Linux)
set -euo pipefail
PET_ID="naiwa-laugh"
REPO_RAW="https://raw.githubusercontent.com/WentaoZhu626/naiwa-codex-pet/main"
DEST="${CODEX_HOME:-$HOME/.codex}/pets/$PET_ID"
mkdir -p "$DEST"

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]:-$0}")" 2>/dev/null && pwd || echo "")"
if [ -n "$SCRIPT_DIR" ] && [ -f "$SCRIPT_DIR/pets/$PET_ID/spritesheet.webp" ]; then
  cp "$SCRIPT_DIR/pets/$PET_ID/pet.json" "$SCRIPT_DIR/pets/$PET_ID/spritesheet.webp" "$DEST/"
else
  curl -fsSL "$REPO_RAW/pets/$PET_ID/pet.json" -o "$DEST/pet.json"
  curl -fsSL "$REPO_RAW/pets/$PET_ID/spritesheet.webp" -o "$DEST/spritesheet.webp"
fi

echo "✅ 已安装到 / Installed to: $DEST"
echo "👉 打开 Codex → Settings → Appearance → Pets，选择「奶蛙大笑」"
echo "👉 Open Codex → Settings → Appearance → Pets and pick \"奶蛙大笑\""
