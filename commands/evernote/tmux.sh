#!bin/zsh

# Open neutron tmux server or create it
function tn() {
  SERVERS=$(eval 'tmux ls')
  NEUTRON='neutron'
  if [[ "$SERVERS" == *"$NEUTRON"* ]]
  then
    tmux a -t neutron
  else
    cd ~/Documents/Development/neutron/
    tmux new -s neutron
  fi
}

# Open maestro tmux server or create it
function tm() {
  SERVERS=$(eval 'tmux ls')
  MAESTRO='maestro'
  if [[ "$SERVERS" == *"$MAESTRO"* ]]
  then
    tmux a -t maestro
  else
    cd ~/Documents/Development/experiments-service/
    tmux new -s maestro
  fi
}

# Open ion tmux server or create it
function ti() {
  SERVERS=$(eval 'tmux ls')
  ION='ion'
  if [[ "$SERVERS" == *"$ION"* ]]
  then
    tmux a -t ion
  else
    cd ~/Documents/Development/ion/
    tmux new -s ion
  fi
}
