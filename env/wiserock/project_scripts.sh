#!bin/zsh

# Start local dev api
function start_wr_api_dev() {
  cd ~/repos/wise-rock/apps/api/
  aws-sso-profile "wiserock-dev:PowerUserAccess"
  npm run dev
}

# Start local stage api
function start_wr_api_stage() {
  cd ~/repos/wise-rock/apps/api/
  npm run dev:stage
}

# Start local eer staging api
function start_wr_api_eer_staging() {
  cd ~/repos/wise-rock/apps/api/
  npm run dev:eer-staging
}

# Start local magnolia staging api
function start_wr_api_magnolia_staging() {
  cd ~/repos/wise-rock/apps/api/
  npm run dev:magnolia-staging
}

# Start local e2e-testing api
function start_wr_api_e2e {
  cd ~/repos/wise-rock/apps/api/
  npm run dev:e2e-testing
}

# Start ui against local dev api
function start_wr_ui() {
  cd ~/repos/wise-rock/apps/web/
  npm run start:local
}

# Start ui against docker container
function start_wr_ui_e2e() {
  cd ~/repos/wise-rock/tests/e2e-tests/
  npx playwright test --ui
}

# Start e2e testing docker container
function start_wr_e2e_docker() {
  cd ~/repos/wise-rock/.local/
  docker compose up
}

# Start e2e testing docker container with build
function start_wr_e2e_docker_build() {
  cd ~/repos/wise-rock/.local/
  docker compose up --build
}

# Start e2e test ui dashboard
function start_wr_e2e_runner() {
  cd ~/repos/wise-rock/tests/e2e-tests/
  npx playwright test --ui
}

# Start ui against remote dev api
function start_wr_ui_remote() {
  cd ~/repos/wise-rock/apps/web/
  npm run start:dev
}

function build_and_preview_web_e2e_testing() {
  cd ~/repos/wise-rock/apps/web/
  npm run build:e2e-testing
  npm run preview:e2e-testing
}

function start_wr_storybook() {
  cd ~/repos/wise-rock/apps/web/
  npm run storybook
}

function wr_e2e_run_and_update_snapshots() {
  cd ~/repos/wise-rock/
  docker run --rm --network host -v $(pwd):/work/ -w /work/ mcr.microsoft.com/playwright:v1.44.1-jammy /bin/bash -c 'cd tests/e2e-tests && CI=1 BASE_URL=http://host.docker.internal:3000 npx playwright test --workers 2 --update-snapshots'
}
