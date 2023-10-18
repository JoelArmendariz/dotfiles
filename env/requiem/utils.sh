#!bin/zsh

function poetry_install_all() {
  for d in */; do
    echo "Installing in $d"
    cd $d
    poetry install
    cd ..
    echo "Done for $d"
  done
}

