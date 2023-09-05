#!bin/zsh

# Open kind-health tmux server or create it
function tkh() {
  SERVERS=$(eval 'tmux ls')
  KIND_HEALTH='kind-health'
  if [[ "$SERVERS" == *"$KIND_HEALTH"* ]]
  then
    tmux a -t kind-health
  else
    cd ~/Documents/Development/KindHealthPlatform/
    tmux new -s kind-health
  fi
}
