# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

This is a personal dotfiles repository (`~/.config`) containing configuration files for development tools and shell environment.

## Repository Structure

- **nvim/** - LazyVim-based Neovim configuration (plugins in `lua/plugins/`, config in `lua/config/`)
- **env/** - Shell environment scripts sourced from `~/.zshrc` via `env/main.sh`
  - Project-specific configs in subdirectories (requiem/, kindhealth/, wiserock/, ledor/)
  - `aliases.sh`, `utils.sh`, `tmux.sh` for shared utilities
- **karabiner/karabiner-config/** - TypeScript-based Karabiner-Elements configuration using karabiner.ts
- **alacritty/** - Terminal emulator config (alacritty.toml)
- **tmux/** - tmux configuration with TPM plugins
- **.kenv/** - Script Kit automation scripts
- **helix/** - Helix editor configuration
- **scripts/** - Python utility scripts

## Commands

### Karabiner Configuration
```bash
cd ~/.config/karabiner/karabiner-config
npm run build    # Generate karabiner.json from TypeScript
npm run update   # Update karabiner.ts dependency
```

### Shell Environment
After modifying env files, reload with:
```bash
source ~/.config/env/main.sh
# or use the alias:
source_env
```

### Neovim
Uses LazyVim - plugins are managed via lazy.nvim. Add new plugins in `nvim/lua/plugins/`.

## Key Conventions

- Shell aliases: `vi` for nvim, `c` for claude, `e` for $EDITOR
- Vi keybindings enabled in zsh command prompt
- Neovim custom keymaps in `nvim/lua/config/keymaps.lua` (leader+rf runs ts-node, leader+rpf runs python3)
