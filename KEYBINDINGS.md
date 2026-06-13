# Zed keybindings (svenb)

**Leader key:** `\` (backslash)

**Base keymap:** Cursor (Linux: `ctrl` unbinds, macOS: `cmd` unbinds — same `\` leader bindings)

**Live config:** `~/.config/zed/keymap.json` (symlink to `keymap.linux.json` or `keymap.macos.json` in the repo)

After pulling or editing the repo, run `./install.sh` then reload Zed (`\ space` → `workspace: reload`).

## Layout

| Key | Focus | Toggle panel | Commands |
|-----|-------|--------------|----------|
| `\ w` | Editor | — | — |
| `\ e` | — | Agent panel | — |
| `\ a` | Agent | — | `\ a …` agent actions |
| `\ l` | Threads sidebar | `\ shift-a` threads | `\ l …` thread actions |
| `\ t` | Terminal | `` \ ` `` terminal panel | `\ d` close (in terminal) |
| `\ b` | — | Left dock | `\ b f/o/d` panel focus |

---

## Focus

| Key | Action |
|-----|--------|
| `\ w` | Focus editor |
| `\ a` | Focus agent panel |
| `\ l` | Focus threads sidebar |
| `\ t` | Focus terminal |

---

## Global / workspace

| Key | Action |
|-----|--------|
| `\ ,` | Toggle vim mode |
| `\ space` | Command palette |
| `\ s` | File finder |
| `\ g` | Git graph |
| `\ shift-g` | Git panel |
| `\ b` | Toggle left dock (file tree) |
| `\ e` | Toggle agent panel (right dock) |
| `\ shift-a` | Toggle threads sidebar |
| `\ shift-t` | New terminal |
| `` \ ` `` | Toggle terminal panel (show/hide) |
| `\ shift-w` | Close window |
| `\ y` | Allow tool once |
| `\ shift-y` | Allow tool always |
| `\ x` | Reject tool once |

### Left dock panels (`\ b …`)

| Key | Action |
|-----|--------|
| `\ b f` | Project panel (file tree) |
| `\ b o` | Outline panel |
| `\ b d` | Debug panel |

---

## Editor

| Key | Action |
|-----|--------|
| `\ f` | Find in file |
| `\ shift-f` | Project search (all files) |
| `\ shift-r` | Find & replace in file |
| `\ d` | Go to definition |
| `\ shift-d` | Go to definition (split) |
| `\ r` | Find all references |
| `\ i` | Inline assist |
| `\ >` | Add selection to thread |
| `\ q` | Close tab |

---

## Agent panel (`\ a …`)

In **AgentPanel**, **AcpThread**, or **AcpThread > Editor**.

| Key | Action |
|-----|--------|
| `\ a t` | New thread |
| `\ a n` | New thread menu |
| `\ a c` | New Cursor ACP thread |
| `\ a m` | Model selector |
| `\ a /` | Cycle favorite models |
| `\ a p` | Profile selector |
| `\ a i` | Agent settings |
| `\ a o` | Thread options menu |
| `\ a ;` | Add context menu |
| `\ a f` | Toggle fast mode |
| `\ a d` | Open agent diff |
| `\ a v` | Cycle agent mode |
| `\ a k` | Keep all changes *(diff)* |
| `\ a shift-k` | Reject all changes *(diff)* |

---

## Threads sidebar (`\ l …`)

| Key | Action |
|-----|--------|
| `\ l h` | Toggle thread history |
| `\ l s` | Switch thread (quick picker; `\ l shift-s` for previous) |
| `\ l r` | Rename thread |
| `\ l d` | Delete thread |
| `\ l a` | Archive thread |

---

## Terminal

| Key | Action |
|-----|--------|
| `\ d` | Close terminal pane |

---

## Other contexts

| Key | Action | Context |
|-----|--------|---------|
| `\ w` | Close window | Settings, SkillCreator |

---

## Quick reference

```
Focus         \w \a \l \t
Toggle        \b \e \shift-a  \` \shift-g
Panels        \b f/o/d       file tree / outline / debug

Editor        \f \shift-f \shift-r \d \r \i \> \q
Global        \s \space \g \shift-w

Agent         \a t/m/d/v/k…
Threads       \l h/s/r/d/a
Allow         \y \shift-y \x
```

---

## Unbound defaults (leader replacements)

On **macOS**, the same shortcuts use **cmd** instead of **ctrl** (terminal toggle stays `ctrl-` ``).

| Default | Replaced by |
|---------|-------------|
| `ctrl-p` | `\ s` |
| `ctrl-f` | `\ f` |
| `ctrl-h` | `\ shift-r` |
| `f12` | `\ d` |
| `alt-f12` | `\ shift-d` |
| `alt-shift-f12` | `\ r` |
| `ctrl-k` | `\ i` |
| `ctrl-shift-f` | `\ shift-f` |
| `ctrl-shift-p` | `\ space` |
| `ctrl-b` | `\ b` |
| `ctrl-alt-b` | `\ e` |
| `ctrl-alt-j` | `\ shift-a` |
| `ctrl-alt-;` | `\ l` |
| `ctrl-shift-e/b/d/g` | `\ b f/o/d`, `\ shift-g` |
| `ctrl-` `` | `` \ ` `` |
| `ctrl-shift-w` | `\ shift-w` |
| `ctrl-w` (pane) | `\ q` |
| `ctrl-?` | `\ a` |
| `ctrl-i/l` (Cursor) | `\ a`, `\ >` |
| `ctrl-n` / `ctrl-r` | `\ a t` |
| `ctrl-alt-shift-n` | `\ a n` |
| `ctrl-alt-/`, `ctrl-/` | `\ a m` |
| `alt-l`, `alt-tab` | `\ a /` |
| `ctrl-i` (profile) | `\ a p` |
| `ctrl-alt-c` | `\ a i` |
| `shift-alt-i` | `\ a o` |
| `ctrl-;` | `\ a ;` |
| `ctrl-alt-.` | `\ a f` |
| `ctrl-shift-r` | `\ a d` |
| `shift-tab` | `\ a v` |
| `shift-alt-a/q/x` | `\ y`, `\ shift-y`, `\ x` |
| `shift-alt-y/z`, `ctrl-enter/backspace` (diff) | `\ a k`, `\ a shift-k` |
| `ctrl->` | `\ >` |
| `ctrl-g` | `\ l h` |
| `ctrl-tab` | default (thread switcher) — use `\ l s` as leader alternative |
| `shift-r` (sidebar) | `\ l r` |
| `ctrl-backspace` | `\ l d` |
| `shift-backspace` | `\ l a` |

---

## Still on defaults

Save (`ctrl-s`), undo/redo, copy/paste, pane splits, and send message (`Enter` in agent) remain on defaults.
