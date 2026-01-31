#!bin/zsh

function seed_ledor_dev() {
  cd ~/repos/ledor/.seed
  psql -d ledor_dev -f seed.sql
}

function update_ledor_dev_schema() {
  cd ~/repos/ledor/.seed
  psql -d ledor_dev -f db-schema.sql
}

function start_api_ledor() {
  cd ~/repos/ledor/apps/api
  npm run dev
}

function start_mobile_ledor() {
  cd ~/repos/ledor/apps/mobile
  npm start
}
