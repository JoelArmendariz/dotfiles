#!bin/zsh

# General/Personal
source ~/.config/commands/git.sh
source ~/.config/commands/qmk.sh
source ~/.config/commands/quick_files.sh
source ~/.config/commands/quick_directories.sh
source ~/.config/commands/tmux.sh
source ~/.config/commands/utils.sh

# Requiem
source ~/.config/commands/requiem/project_scripts.sh
source ~/.config/commands/requiem/tmux.sh
source ~/.config/commands/requiem/utils.sh

# StoryFit
source ~/.config/commands/storyfit/project_scripts.sh
source ~/.config/commands/storyfit/tmux.sh

function source_commands() {
    source ~/.config/commands/commands.sh
}
