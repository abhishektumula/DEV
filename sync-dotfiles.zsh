#!/usr/bin/env zsh

# Dotfiles sync script - backs up config files to a local directory
# Usage: ./sync-dotfiles.zsh [--dry-run]

set -euo pipefail

# Configuration: Add your source -> destination mappings here
# Format: "source_path:destination_name"
typeset -A CONFIGS=(
    "$HOME/.zshrc"           "zshrc"
    "$HOME/.config/ghostty/config"  "ghostty-config"
    "$HOME/.config/nvim"     "nvim"
    "$HOME/.config/tmux"     "tmux"
)

# Destination directory (where configs will be copied)
DEST_DIR="$HOME/.dotfiles-backup"

# Colors for output
GREEN=$'\033[0;32m'
YELLOW=$'\033[1;33m'
RED=$'\033[0;31m'
NC=$'\033[0m' # No Color

DRY_RUN=false
if [[ "${1:-}" == "--dry-run" ]]; then
    DRY_RUN=true
fi

# Create destination directory
if [[ "$DRY_RUN" == false ]]; then
    mkdir -p "$DEST_DIR"
fi

print "Syncing dotfiles to $DEST_DIR"
print "----------------------------------------"

for src dest_name in ${(kv)CONFIGS}; do
    dest="$DEST_DIR/$dest_name"

    if [[ ! -e "$src" ]]; then
        print "${YELLOW}⚠ Skipping: $src (not found)${NC}"
        continue
    fi

    if [[ "$DRY_RUN" == true ]]; then
        print "${GREEN}[DRY RUN]${NC} Would copy: $src -> $dest"
    else
        if [[ -d "$src" ]]; then
            rsync -av --delete "$src/" "$dest/"
        else
            cp "$src" "$dest"
        fi
        print "${GREEN}✓${NC} Synced: $src -> $dest"
    fi
done

print "----------------------------------------"
if [[ "$DRY_RUN" == true ]]; then
    print "${YELLOW}Dry run complete. Run without --dry-run to apply changes.${NC}"
else
    print "${GREEN}Sync complete!${NC}"
    print "Backup location: $DEST_DIR"
fi
