#!bin/zsh

# Open this file
function commands() {
  cd ~/.config/commands/
  nvim
}

# Open gameology in nvim
function gameology() {
  cd ~/Documents/Development/PersonalProjects/gameology-in-react
  nvim
}

# Open snippets directory in nvim
function snippets() {
  cd ~/.config/snippets/
  nvim
}

# Open ts snippets file in nvim
function snippetsts() {
  cd ~/.config/snippets/
  nvim index.ts
}

# Open py snippets file in nvim
function snippetspy() {
  cd ~/.config/snippets
  nvim main.py
}

# Open scripts directory in nvim
function scripts() {
  cd ~/.config/scripts
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
  cd ~/.config/alacritty
  nvim alacritty.yml
}

