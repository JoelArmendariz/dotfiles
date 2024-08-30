#!bin/zsh

# tmux attach
function t() {
  tmux a -t $1
}

# new tmux session
function tnew() {
  tmux new -s $1
}

# view tmux servers
function ts() {
  tmux ls
}

# tmux kill-server
function tkill() {
  tmux kill-server
}

# Open config tmux server or create it
function tc() {
  SERVERS=$(eval 'tmux ls')
  CONFIG='config'
  if [[ "$SERVERS" == *"$CONFIG"* ]]
  then
    tmux a -t config
  else
    cd ~/.config/
    tmux new -s config
  fi
}

function tkit() {
  SERVERS=$(eval 'tmux ls')
  KIT='kit'
  if [[ "$SERVERS" == *"$KIT"* ]]
  then
    tmux a -t kit
  else
    cd ~/.kenv/scripts/
    tmux new -s kit
  fi
}

# Open gameology tmux server or create it
function tg() {
  SERVERS=$(eval 'tmux ls')
  GAMEOLOGY='gameology'
  if [[ "$SERVERS" == *"$GAMEOLOGY"* ]]
  then
    tmux a -t gameology
  else
    tmux new -s gameology
  fi
}

# Open layout-auditioner tmux server or create it
function tl() {
  SERVERS=$(eval 'tmux ls')
  LAYOUT_AUDITIONER='layout-auditioner'
  if [[ "$SERVERS" == *"$LAYOUT_AUDITIONER"* ]]
  then
    tmux a -t layout-auditioner
  else
    cd ~/Documents/Development/layout-auditioner/
    tmux new -s layout-auditioner
  fi
}

# Open qmk tmux server or create it
function tq() {
  SERVERS=$(eval 'tmux ls')
  QMK='qmk'
  if [[ "$SERVERS" == *"$QMK"* ]]
  then
    tmux a -t qmk
  else
    cd ~/Documents/Development/qmk_firmware/
    tmux new -s qmk
  fi
}

function ttypeit() {
  SERVERS=$(eval 'tmux ls')
  TYPEIT='typeit'
  if [[ "$SERVERS" == *"$TYPEIT"* ]]
  then
    tmux a -t typeit
  else
    cd ~/Documents/Development/typeit/
    tmux new -s typeit
  fi
}
