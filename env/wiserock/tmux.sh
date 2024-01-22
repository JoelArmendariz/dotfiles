#!bin/zsh

# Open wise-rock tmux server or create it
function tw() {
  SERVERS=$(eval 'tmux ls')
  WISEROCK='wise-rock'
  if [[ "$SERVERS" == *"$WISEROCK"* ]]
  then
    tmux a -t wise-rock
  else
    cd ~/repos/wise-rock/
    tmux new -s wise-rock
  fi
}

