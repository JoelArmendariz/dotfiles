#!bin/zsh

# Start local dev api
function start_wr_api() {
  cd ~/repos/wise-rock/apps/api/
  npm run dev
}

# Start ui against local dev api
function start_wr_ui() {
  cd ~/repos/wise-rock/apps/web/
  npm run start:local
}

# Start ui against remote dev api
function start_wr_ui_remote() {
  cd ~/repos/wise-rock/apps/web/
  npm run start:dev
}

function start_wr_storybook() {
  cd ~/repos/wise-rock/apps/web/
  npm run storybook
}
