#!bin/zsh

# Open requiem tmux server or create it
function tst() {
  SERVERS=$(eval 'tmux ls')
  STORYFIT='storyfit'
  if [[ "$SERVERS" == *"$STORYFIT"* ]]
  then
    tmux a -t storyfit
  else
    cd ~/Documents/Development/storyfit-platform/
    tmux new -s storyfit
  fi
}
