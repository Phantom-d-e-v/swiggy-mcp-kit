#!/usr/bin/env bash
# Swiggy MCP Kit — installer for Cursor / VS Code
# Writes config/mcp.json into the correct MCP config location.
# Safe: backs up any existing config first; merges (does not clobber) other servers.
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SRC="$SCRIPT_DIR/config/mcp.json"

# Detect client
if [ -f "$HOME/.cursor/mcp.json" ]; then
  TARGET="$HOME/.cursor/mcp.json"
  CLIENT="Cursor"
elif [ -n "${VSCODE_SETTINGS_DIR:-}" ]; then
  TARGET="$VSCODE_SETTINGS_DIR/mcp.json"
  CLIENT="VS Code"
else
  # Default to Cursor path; user can move it manually
  TARGET="$HOME/.cursor/mcp.json"
  CLIENT="Cursor (default)"
fi

echo "Swiggy MCP Kit installer"
echo "Source : $SRC"
echo "Target : $TARGET  ($CLIENT)"
echo

# Backup
if [ -f "$TARGET" ]; then
  cp "$TARGET" "$TARGET.bak.$(date +%s)"
  echo "Backed up existing $TARGET"
fi

# Merge swiggy servers into target using python (no jq dependency)
python3 - "$SRC" "$TARGET" <<'PY'
import sys, json, os
src, target = sys.argv[1], sys.argv[2]
with open(src) as f:
    swiggy = json.load(f)["mcpServers"]
if os.path.exists(target):
    with open(target) as f:
        existing = json.load(f)
else:
    existing = {}
existing.setdefault("mcpServers", {})
existing["mcpServers"].update(swiggy)
os.makedirs(os.path.dirname(target), exist_ok=True)
with open(target, "w") as f:
    json.dump(existing, f, indent=2)
print("Wrote", len(swiggy), "Swiggy servers into", target)
PY

echo
echo "✅ Done. Now:"
echo "   1. Open $CLIENT and reload / restart."
echo "   2. Authenticate each Swiggy server (Food, Instamart, Dineout) with your Swiggy login."
echo "   3. Paste prompts/rasoi.md or prompts/splitr.md into your chat and start."
echo
echo "⚠️  Keep the Swiggy mobile app CLOSED while using MCP. COD orders can't be cancelled."
