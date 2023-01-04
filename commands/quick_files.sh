#!bin/zsh

# Open this file
function commands() {
  cd ~/.config/commands/.commands.sh
  nvim
}

# Open gameology in nvim
function gameology() {
  cd ~/Documents/Development/PersonalProjects/gameology-in-react
  nvim
}

# Open ts snippets file in nvim
function snippets() {
  cd ~/Documents/Development/snippets
  nvim index.ts
}

# Open js snippets file in nvim
function snippetsjs() {
  cd ~/Documents/Development/snippets
  nvim index.js
}

# Open py snippets file in nvim
function snippetspy() {
  cd ~/Documents/Development/snippets
  nvim main.py
}

# Open scripts directory in nvim
function scripts() {
  cd ~/Documents/Development/scripts
  nvim
}

# Open .zshrc in nvim
function zshrc() {
  cd ~
  nvim .zshrc
}

# Open config directory in nvim
function config() {
  cd ~/.config
  nvim
}

# Open alacritty.yml in nvim
function alacrittyyml() {
  cd ~/.config/alacritty/alacritty.yml
  nvim
}

