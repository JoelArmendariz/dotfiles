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

# StoryFit
source ~/.config/env/storyfit/project_scripts.sh
source ~/.config/env/storyfit/tmux.sh

# KindHealth
source ~/.config/env/kindhealth/tmux.sh
source ~/.config/env/kindhealth/utils.sh

function source_env() {
    source ~/.config/env/main.sh
}
