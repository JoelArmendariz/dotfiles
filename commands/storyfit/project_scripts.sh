#!bin/zsh

function storyfit() {
  cd ~/Documents/Development/storyfit-platform/
  nvim
}

function cd_storyfit() {
  cd ~/Documents/Development/storyfit-platform/
}

function conda_storyfit() {
  conda activate storyfit-platform
}

function run_storyfit_server() {
  cd ~/Documents/Development/storyfit-platform/backend/
  python manage.py runserver
}

function run_storyfit_ui() {
  cd ~/Documents/Development/storyfit-platform/frontend/
  yarn dev
}

function start_postgres() {
  pg_ctl -D ~/opt/local/var/postgres start
}
