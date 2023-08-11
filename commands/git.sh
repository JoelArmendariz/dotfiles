#!bin/zsh

# Git
function gs() {
  git status
}

# Git checkout develop
function gcd() {
  git checkout develop
}

# Pull from develop
function gpd() {
  git pull origin develop
}

function gb() {
  if [ git branch | egrep "^\*?[[:space:]]+{BRANCH}$" ]
  then
    git checkout $1
  else
    git checkout -b $1
  fi
}

# Open lazygit
function lg() {
  lazygit
}
