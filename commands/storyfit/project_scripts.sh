#!bin/zsh

function storyfit() {
  cd ~/Documents/Development/storyfit-platform/
  nvim
}

function cd_storyfit() {
  cd ~/Documents/Development/storyfit-platform/
}

function conda_stf_platform() {
  conda activate storyfit-platform
}

function stf_server() {
  cd ~/Documents/Development/storyfit-platform/backend/
  python manage.py runserver
}

function stf_ui() {
  cd ~/Documents/Development/storyfit-platform/frontend/
  npm run dev
}

function stf_migrate() {
  cd ~/Documents/Development/storyfit-platform/backend/
  python manage.py migrate
}

function stf_dramatiq() {
  cd ~/Documents/Development/storyfit-platform/backend/
  python manage.py rundramatiq
}

function start_postgres() {
  pg_ctl -D ~/usr/local/var/postgres start
}

function stf_ssh_platform_dev() {
  ssh -i ~/.ssh/storyfit-platform-dev.pem ubuntu@54.205.115.162
}

function stf_ssh_platform_prod() {
  ssh -i ~/.ssh/storyfit-platform-prod.pem ubuntu@ec2-54-221-184-247.compute-1.amazonaws.com
}

function stf_ssh_correlations_api() {
  ssh -i ~/.ssh/storyfit-models-api.pem ec2-user@ec2-34-227-57-156.compute-1.amazonaws.com
}

function stf_ssh_genre_api() {
  ssh -i ~/.ssh/storyfit-models-api.pem ec2-user@ec2-52-87-191-88.compute-1.amazonaws.com
}

function stf_ssh_storymetrics_dev() {
  ssh -i ~/.ssh/storyfit-models-api.pem ec2-user@ec2-54-227-23-90.compute-1.amazonaws.com
}

function stf_ssh_storymetrics_prod() {
  ssh -i ~/.ssh/storyfit-models-api.pem ec2-user@ec2-54-147-140-192.compute-1.amazonaws.com
}

function follow_docker_logs() {
  CONTAINER_ID=$(docker ps -aqf "name=^storyfit-platform-backend-1$")
  docker logs $CONTAINER_ID -f
}

alias stf_docker_compose_local='docker compose -f docker-compose.yml -f docker-compose.local.yml'
