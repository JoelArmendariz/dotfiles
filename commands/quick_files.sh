#!bin/zsh

# Open this file
function commands() {
  cd ~/.config/commands/
  lvim
}

# Open gameology in lvim
function gameology() {
  cd ~/Documents/Development/PersonalProjects/gameology-in-react
  lvim
}

# Open snippets directory in lvim
function snippets() {
  cd ~/Documents/Development/snippets
  lvim
}

# Open ts snippets file in lvim
function snippetsts() {
  cd ~/Documents/Development/snippets
  lvim index.ts
}

# Open js snippets file in lvim
function snippetsjs() {
  cd ~/Documents/Development/snippets
  lvim index.js
}

# Open py snippets file in lvim
function snippetspy() {
  cd ~/Documents/Development/snippets
  lvim main.py
}

# Open scripts directory in lvim
function scripts() {
  cd ~/.config/scripts
  lvim
}

# Open .zshrc in lvim
function zshrc() {
  cd ~
  lvim .zshrc
}

# Open config directory in lvim
function config() {
  cd ~/.config
  lvim
}

# Open alacritty.yml in lvim
function alacrittyyml() {
  cd ~/.config/alacritty
  lvim alacritty.yml
}

