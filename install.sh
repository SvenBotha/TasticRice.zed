#!/bin/bash

# Tastic Rice - Zed configuration installer (symlink mode)

set -e

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

source_dir="$(cd "$(dirname "$0")" && pwd)"
zed_dir="$HOME/.config/zed"
cursor_rules_dir="$HOME/.cursor/rules"

case "$(uname -s)" in
  Darwin)
    keymap_src="keymap.macos.json"
    platform="macOS"
    ;;
  Linux)
    keymap_src="keymap.linux.json"
    platform="Linux"
    ;;
  *)
    echo -e "${RED}Unsupported OS: $(uname -s). Use Linux or macOS.${NC}" >&2
    exit 1
    ;;
esac

tracked_files=(settings.json KEYBINDINGS.md)

echo -e "${YELLOW}Linking Tastic Rice Zed configuration (${platform})...${NC}"

mkdir -p "$zed_dir" "$cursor_rules_dir"

# Back up and remove any existing real files we manage (keep themes/ etc.)
if [ -d "$zed_dir" ]; then
    for file in keymap.json "${tracked_files[@]}"; do
        target="$zed_dir/$file"
        if [ -e "$target" ] && [ ! -L "$target" ]; then
            backup_dir="$HOME/.config/zed.backup.$(date +%Y%m%d_%H%M%S)"
            mkdir -p "$backup_dir"
            echo -e "${YELLOW}Backing up $file to $backup_dir${NC}"
            cp "$target" "$backup_dir/"
            rm "$target"
        elif [ -L "$target" ]; then
            rm "$target"
        fi
    done
fi

ln -sf "$source_dir/$keymap_src" "$zed_dir/keymap.json"
echo -e "${GREEN}✓${NC} $zed_dir/keymap.json -> $source_dir/$keymap_src"

for file in "${tracked_files[@]}"; do
    ln -sf "$source_dir/$file" "$zed_dir/$file"
    echo -e "${GREEN}✓${NC} $zed_dir/$file -> $source_dir/$file"
done

cursor_rule="$cursor_rules_dir/zed-keybindings.mdc"
if [ -e "$cursor_rule" ] && [ ! -L "$cursor_rule" ]; then
    backup_dir="$HOME/.config/zed.backup.$(date +%Y%m%d_%H%M%S)"
    mkdir -p "$backup_dir"
    cp "$cursor_rule" "$backup_dir/zed-keybindings.mdc"
    rm "$cursor_rule"
elif [ -L "$cursor_rule" ]; then
    rm "$cursor_rule"
fi

ln -sf "$source_dir/cursor/zed-keybindings.mdc" "$cursor_rule"
echo -e "${GREEN}✓${NC} $cursor_rule -> $source_dir/cursor/zed-keybindings.mdc"

echo -e "${GREEN}Done. Edit files in $source_dir, then commit and push.${NC}"
echo -e "${YELLOW}Restart Zed to pick up changes.${NC}"
