from pathlib import Path
import os


def source_commands():
    if "zsh" in os.environ.get("SHELL", ""):
        print("Checking for commands source in .zshrc")
        with open(Path.home() / ".zshrc", "r+") as f:
            source_command = "source ~/.config/commands/commands.sh"
            zshrc_contents = f.read()
            if source_command not in zshrc_contents:
                print("No commands source found. Adding it now...")
                f.write(f"\n{source_command}")
                print("Source added to .zshrc")
            else:
                print("Commands source found. Moving on.")


# Source zsh commands in local .zshrc
source_commands()
