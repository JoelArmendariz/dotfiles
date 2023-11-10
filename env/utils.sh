#!bin/zsh

function source_zshrc() {
  source ~/.zshrc
}

# Go to website in Chrome
function goto() {
  open -a "Arc" http://$1.com
}

# Copy current directory to clipboard
function cp() {
  pwd | pbcopy
}

function check_for_logs() {
  git diff | grep 'console.log'
}

function pi() {
  ssh pi@192.168.1.227
}

function build_karabiner() {
  cd ~/.config/karabiner/karabiner-config/
  yarn run build
  cd -
}

function managepy() {
  python manage.py $1
}

function fcd() {
  local selected_folder
  selected_folder=$(find . -maxdepth 1 -type d | sed 's|^\./||' | fzf)

  if [ -n "$selected_folder" ]; then
    cd "$selected_folder" || return 1
  fi
}
