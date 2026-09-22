#!/usr/bin/env bash

# Dotfiles sync script - backs up config files to a local directory
# Usage: ./sync-dotfiles.sh [--dry-run]

set -euo pipefail

# Configuration: Add your source -> destination mappings here
# Format: "source_path:destination_name"
CONFIGS=(
  "$HOME/.zshrc:zshrc"
  "$HOME/.config/ghostty/config:ghostty-config"
  "$HOME/.config/nvim:nvim"
  "$HOME/.config/tmux:tmux"
)

# Destination directory (where configs will be copied)
DEST_DIR="$HOME/.dotfiles-backup"

# Colors for output
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

DRY_RUN=false
if [[ "${1:-}" == "--dry-run" ]]; then
  DRY_RUN=true
fi

# Create destination directory
if [[ "$DRY_RUN" == false ]]; then
  mkdir -p "$DEST_DIR"
fi

echo "Syncing dotfiles to $DEST_DIR"
echo "----------------------------------------"

for config in "${CONFIGS[@]}"; do
  IFS=':' read -r src dest_name <<<"$config"
  dest="$DEST_DIR/$dest_name"

  if [[ ! -e "$src" ]]; then
    echo -e "${YELLOW}⚠ Skipping: $src (not found)${NC}"
    continue
  fi

  if [[ "$DRY_RUN" == true ]]; then
    echo -e "${GREEN}[DRY RUN]${NC} Would copy: $src -> $dest"
  else
    if [[ -d "$src" ]]; then
      rsync -av --delete "$src/" "$dest/"
    else
      cp "$src" "$dest"
    fi
    echo -e "${GREEN}✓${NC} Synced: $src -> $dest"
  fi
done

echo "----------------------------------------"
if [[ "$DRY_RUN" == true ]]; then
  echo -e "${YELLOW}Dry run complete. Run without --dry-run to apply changes.${NC}"
else
  echo -e "${GREEN}Sync complete!${NC}"
  echo "Backup location: $DEST_DIR"
fi
