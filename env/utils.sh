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

# Fuzzy match a file and open it in nvim
function fv() {
  local selected_file
  selected_file=$(find . -type f | grep -vi 'node_modules' | sed 's|^\./||' | fzf --preview 'bat --style=numbers --color=always --line-range :500 {}')

  if [ -n "$selected_file" ]; then
    $EDITOR "$selected_file" || return 1
  fi
}

# Fuzzy search through clipboard contents
function fclipboard() {
    local clipboard_content
    clipboard_content=$(pbpaste)

    if [ -n "$clipboard_content" ]; then
        echo "$clipboard_content" | fzf --ansi --preview="echo {}" --preview-window=wrap
    else
        echo "Clipboard is empty."
    fi
}

function type() {
  echo -n > ~/.config/notes/scratchpad.txt
  e ~/.config/notes/scratchpad.txt -c 'autocmd BufWritePost * silent !cat % | pbcopy'
}
