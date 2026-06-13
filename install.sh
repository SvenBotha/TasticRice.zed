#!/bin/bash

# Tastic Rice - Zed configuration installer

set -e

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

source_dir="$(dirname "$0")"
zed_dir="$HOME/.config/zed"
cursor_rules_dir="$HOME/.cursor/rules"

echo -e "${YELLOW}Installing Tastic Rice Zed configuration...${NC}"

if [ -d "$zed_dir" ]; then
    backup_dir="$HOME/.config/zed.backup.$(date +%Y%m%d_%H%M%S)"
    echo -e "${YELLOW}Backing up existing config to: $backup_dir${NC}"
    mv "$zed_dir" "$backup_dir"
fi

mkdir -p "$zed_dir"
cp "$source_dir/keymap.json" "$source_dir/settings.json" "$source_dir/KEYBINDINGS.md" "$zed_dir/"

mkdir -p "$cursor_rules_dir"
cp "$source_dir/cursor/zed-keybindings.mdc" "$cursor_rules_dir/"

echo -e "${GREEN}✓ Zed config installed to $zed_dir${NC}"
echo -e "${GREEN}✓ Cursor rule installed to $cursor_rules_dir/zed-keybindings.mdc${NC}"
echo -e "${YELLOW}Restart Zed to pick up changes.${NC}"
