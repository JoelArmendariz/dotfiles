#!bin/zsh

# Open storyfit tmux server or create it
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

# Open storyfit insights tmux server or create it
function tsti() {
  SERVERS=$(eval 'tmux ls')
  INSIGHTS='insights'
  if [[ "$SERVERS" == *"$INSIGHTS"* ]]
  then
    tmux a -t insights
  else
    cd ~/Documents/Development/insights_reports/
    tmux new -s insights
  fi
}

# Open storyfit models api tmux server or create it
function tstm() {
  SERVERS=$(eval 'tmux ls')
  MODELS='models'
  if [[ "$SERVERS" == *"$MODELS"* ]]
  then
    tmux a -t models
  else
    cd ~/Documents/Development/storyfit-models-api/
    tmux new -s models
  fi
}
