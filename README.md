# Tastic Rice — Zed

Leader-key Zed configuration for Linux and macOS (`\` backslash leader, Cursor base keymap).

Companion to [TasticRice.nvim](https://github.com/SvenBotha/TasticRice.nvim) — same idea, separate repo per editor.

## What's included

| File | Installed to |
|------|----------------|
| `keymap.linux.json` or `keymap.macos.json` | `~/.config/zed/keymap.json` (platform picked by `install.sh`) |
| `settings.json` | `~/.config/zed/settings.json` |
| `KEYBINDINGS.md` | `~/.config/zed/KEYBINDINGS.md` |
| `cursor/zed-keybindings.mdc` | `~/.cursor/rules/zed-keybindings.mdc` |

The Cursor rule lets agents read your keybindings across projects without guessing.

## Install

```bash
git clone https://github.com/SvenBotha/TasticRice.zed.git ~/git/TasticRice.zed
cd ~/git/TasticRice.zed
./install.sh
```

This **symlinks** tracked files into `~/.config/zed` (and the Cursor rule into `~/.cursor/rules/`). Edit the repo directly — changes are live immediately. Commit and push when ready.

Non-tracked files in `~/.config/zed/` (e.g. `themes/`) are left untouched.

## Quick reference

```
Focus     \w \a \l \t        editor / agent / threads / terminal
Toggle    \b \e \shift-a     left dock / agent / threads sidebar
Search    \f \shift-f \s     find / project search / files
Agent     \a t/m/d/v/k …     agent panel
Threads   \l h/s/r/d/a       thread list
```

Full map: [KEYBINDINGS.md](./KEYBINDINGS.md)

## Why a separate repo?

- **Not in [TasticRice.dotfiles](https://github.com/SvenBotha/TasticRice.dotfiles)** — dotfiles cover other tools; Zed config is cross-platform and evolves quickly.
- **Not in [cursor-skills](https://github.com/SvenBotha/cursor-skills)** — skills are reusable prompts; this is editor config.
- **Same pattern as TasticRice.nvim** — one editor, one repo, `install.sh` symlink/copy workflow.
