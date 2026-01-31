#!bin/zsh

# General/Personal
source ~/.config/env/constants.sh
source ~/.config/env/git.sh
source ~/.config/env/qmk.sh
source ~/.config/env/quick_files.sh
source ~/.config/env/quick_directories.sh
source ~/.config/env/tmux.sh
source ~/.config/env/utils.sh
source ~/.config/env/aliases.sh
source ~/.config/env/keybinds.zsh

# Requiem
source ~/.config/env/requiem/project_scripts.sh
source ~/.config/env/requiem/tmux.sh
source ~/.config/env/requiem/utils.sh
source ~/.config/env/requiem/quick_files.sh
source ~/.config/env/requiem/quick_directories.sh

# KindHealth
source ~/.config/env/kindhealth/tmux.sh
source ~/.config/env/kindhealth/utils.sh

# WiseRock
source ~/.config/env/wiserock/main.sh
source ~/.config/env/wiserock/project_scripts.sh

# Ledor
source ~/.config/env/ledor/main.sh
source ~/.config/env/ledor/project_scripts.sh

function source_env() {
    source ~/.config/env/main.sh
}
