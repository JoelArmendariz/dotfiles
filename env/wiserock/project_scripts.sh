#!bin/zsh

function cd_wr() {
  cd ~/repos/wise-rock-trees/wise-rock
}

# Start local dev api
function start_api_dev() {
  cd ~/repos/wise-rock-trees/wise-rock/apps/api/
  aws-sso-profile "wiserock-dev:PowerUserAccess"
  npm run dev
}

# Start local stage api
function start_api_stage() {
  cd ~/repos/wise-rock-trees/wise-rock/apps/api/
  aws-sso-profile "wiserock-stage:PowerUserAccess"
  npm run dev:stage
}

# Start local eer staging api
function start_api_eer_staging() {
  cd ~/repos/wise-rock-trees/wise-rock/apps/api/
  npm run dev:eer-staging
}

# Start local permian staging api
function start_api_permian_staging() {
  cd ~/repos/wise-rock-trees/wise-rock/apps/api/
  npm run dev:permian-staging
}

function te2e() {
  local SESSION_NAME="${1:-e2e}"

  # If session already exists, just attach
  if tmux has-session -t "$SESSION_NAME" 2>/dev/null; then
    tmux attach -t "$SESSION_NAME"
    return
  fi

  tmux new-session -d -s "$SESSION_NAME" -n docker

  # Create the other windows
  tmux new-window -t "$SESSION_NAME" -n web
  tmux new-window -t "$SESSION_NAME" -n e2e-ui

  tmux attach -t "$SESSION_NAME"
 
  # Explicitly set agent as the active window
  tmux select-window -t "$SESSION_NAME:docker"
}

function z1() {
  local SESSION_NAME="tree1"

  if zellij ls 2>&1 | grep -q "$SESSION_NAME" && ! zellij ls 2>&1 | grep "$SESSION_NAME" | grep -q "EXITED"; then
    zellij attach "$SESSION_NAME"
    return
  fi

  zellij --session "$SESSION_NAME" --new-session-with-layout wr-dev
}

function z2() {
  local SESSION_NAME="tree2"

  if zellij ls 2>&1 | grep -q "$SESSION_NAME" && ! zellij ls 2>&1 | grep "$SESSION_NAME" | grep -q "EXITED"; then
    zellij attach "$SESSION_NAME"
    return
  fi

  zellij --session "$SESSION_NAME" --new-session-with-layout wr-dev
}

function z3() {
  local SESSION_NAME="tree3"

  if zellij ls 2>&1 | grep -q "$SESSION_NAME" && ! zellij ls 2>&1 | grep "$SESSION_NAME" | grep -q "EXITED"; then
    zellij attach "$SESSION_NAME"
    return
  fi

  zellij --session "$SESSION_NAME" --new-session-with-layout wr-dev
}

function zkill() {
  z kill-all-sessions
}

function tw1() {
  local SESSION_NAME="${1:-tree1}"

  cd ~/repos/wise-rock-trees/wise-rock/

  # If session already exists, just attach
  if tmux has-session -t "$SESSION_NAME" 2>/dev/null; then
    tmux attach -t "$SESSION_NAME"
    return
  fi

  tmux new-session -d -s "$SESSION_NAME" -n servers

  # Create the other windows
  tmux new-window -t "$SESSION_NAME" -n dev
  tmux new-window -t "$SESSION_NAME" -n agent

  tmux attach -t "$SESSION_NAME"

  # Explicitly set agent as the active window
  tmux select-window -t "$SESSION_NAME:agent"
}

function tw2() {
  local SESSION_NAME="${1:-tree2}"

  cd ~/repos/wise-rock-trees/tree-2/

  # If session already exists, just attach
  if tmux has-session -t "$SESSION_NAME" 2>/dev/null; then
    tmux attach -t "$SESSION_NAME"
    return
  fi

  tmux new-session -d -s "$SESSION_NAME" -n servers

  # Create the other windows
  tmux new-window -t "$SESSION_NAME" -n dev
  tmux new-window -t "$SESSION_NAME" -n agent

  tmux attach -t "$SESSION_NAME"

  # Explicitly set agent as the active window
  tmux select-window -t "$SESSION_NAME:agent"
}

function tw3() {
  local SESSION_NAME="${1:-tree3}"

  cd ~/repos/wise-rock-trees/tree-3

  # If session already exists, just attach
  if tmux has-session -t "$SESSION_NAME" 2>/dev/null; then
    tmux attach -t "$SESSION_NAME"
    return
  fi

  tmux new-session -d -s "$SESSION_NAME" -n servers

  # Create the other windows
  tmux new-window -t "$SESSION_NAME" -n dev
  tmux new-window -t "$SESSION_NAME" -n agent

  tmux attach -t "$SESSION_NAME"

  # Explicitly set agent as the active window
  tmux select-window -t "$SESSION_NAME:agent"
}

# Start local magnolia staging api
function start_api_magnolia_staging() {
  cd ~/repos/wise-rock-trees/wise-rock/apps/api/
  npm run dev:magnolia-staging
}

# Start ui against local dev api
function start_ui() {
  cd ~/repos/wise-rock-trees/wise-rock/apps/web/
  npm run start:local
}

# Start ui against docker container
function start_ui_e2e() {
  cd ~/repos/wise-rock-trees/wise-rock/tests/e2e-tests/
  npx playwright test --ui
}

# Start e2e testing docker container
function start_e2e_docker() {
  cd ~/repos/wise-rock-trees/wise-rock/.local/
  docker compose up
}

# Start e2e testing docker container with build
function start_e2e_docker_build() {
  cd ~/repos/wise-rock-trees/wise-rock/.local/
  docker compose up --build
}

function build_and_preview_web_e2e_testing() {
  cd ~/repos/wise-rock-trees/wise-rock/apps/web/
  npm run build:e2e-testing
  npm run preview:e2e-testing
}

function start_storybook() {
  cd ~/repos/wise-rock-trees/wise-rock/apps/web/
  npm run storybook -- --no-open
}

function update_snapshots() {
  cd ~/repos/wise-rock-trees/wise-rock/tests/e2e-tests/
  npm run update-snapshots
}

function clean_e2e_report() {
  cd ~/Desktop/
  rm -r report
  cd ~/Downloads/
  rm html-report--attempt-1.zip
}

function show_e2e_report() {
  cd ~/Desktop/
  mkdir report
  cd report
  unzip ~/Downloads/html-report--attempt-1
  npx playwright show-report ~/Desktop/report
}

function print_function() {
  # Path to the file containing bash functions
  functions_file=~/.config/env/wiserock/project_scripts.sh

  # Check if the functions file exists
  if [ ! -f "$functions_file" ]; then
    echo "Error: Functions file $functions_file not found."
    exit 1
  fi

  # Source the functions file to load all defined functions
  source "$functions_file"

  function_names=$(grep -o 'function\s\+\w\+' $functions_file | awk '{print $2}')

  function_name=$(echo "$function_names" | fzf)
  function_def=$(declare -f "$function_name")

  if [ -z "$function_def" ]; then
    echo "Not found"
  else
    echo "$function_def"
  fi
}
