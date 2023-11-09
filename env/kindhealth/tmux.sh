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

# Open kio-components tmux server or create it
function tkio_components() {
  SERVERS=$(eval 'tmux ls')
  KIO_COMPONENTS='kio-components'
  if [[ "$SERVERS" == *"$KIO_COMPONENTS"* ]]
  then
    tmux a -t kio-components
  else
    cd ~/Documents/Development/kh-kio-components/
    tmux new -s kio-components
  fi
}

# Open kio-monorepo tmux server or create it
function tkio() {
  SERVERS=$(eval 'tmux ls')
  KIO_MONOREPO='kio-monorepo'
  if [[ "$SERVERS" == *"$KIO_MONOREPO"* ]]
  then
    tmux a -t kio-monorepo
  else
    cd ~/Documents/Development/kh-kio-monorepo/
    tmux new -s kio-monorepo
  fi
}
