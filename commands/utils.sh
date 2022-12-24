#!bin/zsh

function source_zshrc() {
  source ~/.zshrc
}

# Go to website in Chrome
function goto() {
  open -a "Google Chrome" http://$1.com
}

# Copy current directory to clipboard
function cp() {
  pwd | pbcopy
}

function copy_branch() {
  node ~/Documents/Development/scripts/copyGitBranch/index.js
}

function check_for_logs() {
  git diff | grep 'console.log'
}

function pi() {
  ssh pi@192.168.1.227
}

