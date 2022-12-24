#!bin/zsh

source ~/.config/commands/git.sh
source ~/.config/commands/qmk.sh
source ~/.config/commands/quick_files.sh
source ~/.config/commands/quick_directories.sh
source ~/.config/commands/tmux.sh
source ~/.config/commands/utils.sh
source ~/.config/commands/evernote/tmux.sh
source ~/.config/commands/evernote/quick_directories.sh
source ~/.config/commands/evernote/quick_files.sh
source ~/.config/commands/evernote/commands.sh

function source_commands() {
    source ~/.config/commands/commands.sh
}
