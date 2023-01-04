#!bin/zsh

function requiem() {
    cd ~/Documents/Development/requiem-mono-repo/requiem/
    nvim
}

function cd_requiem() {
    cd ~/Documents/Development/requiem-mono-repo/requiem/
}

# Start the Data Requiem local API
function start_api() {
    cd ~/Documents/Development/requiem-mono-repo/requiem/services/requiem-api/
    poetry run uvicorn --app-dir src --reload --port 5000 app.main:app
}

# Start the Data Requiem local UI
function start_ui() {
    cd ~/Documents/Development/requiem-mono-repo/requiem/services/requiem-ui/
    yarn dev
}

function generate_requiem_models() {
    cd ~/Documents/Development/requiem-mono-repo/requiem/libraries/models-py/scripts/
    poetry run sh scripts/generate.sh
}

function secretsyml() {
    nvim /etc/requiem/secrets.yml
}

function settingsyml() {
    nvim /etc/requiem/settings.yml
}

