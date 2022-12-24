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
    tmux new -s config
  fi
}

function tscripts() {
  SERVERS=$(eval 'tmux ls')
  SCRIPTS='scripts'
  if [[ "$SERVERS" == *"$SCRIPTS"* ]]
  then
    tmux a -t scripts
  else
    tmux new -s scripts
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
