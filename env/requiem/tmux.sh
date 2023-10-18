#!bin/zsh

# Open requiem tmux server or create it
function tr() {
  SERVERS=$(eval 'tmux ls')
  REQUIEM='requiem'
  if [[ "$SERVERS" == *"$REQUIEM"* ]]
  then
    tmux a -t requiem
  else
    cd ~/Documents/Development/requiem/
    tmux new -s requiem
  fi
}
