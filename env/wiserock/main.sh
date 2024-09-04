#!bin/zsh

function wr() {
  # Path to the file containing bash functions
  functions_file=~/.config/env/wiserock/project_scripts.sh

  # Check if the functions file exists
  if [ ! -f "$functions_file" ]; then
    echo "Error: Functions file $functions_file not found."
    exit 1
  fi

  # Source the functions file to load all defined functions
  source "$functions_file"

  # Get a list of function names defined in the file
  function_names=$(grep -o 'function\s\+\w\+' $functions_file | awk '{print $2}')

  # Use fzf to select a function to run
  selected_function=$(echo "$function_names" | fzf)

  # Check if user selected any function
  if [ -n "$selected_function" ]; then
    echo "Selected function: $selected_function"

      # Run the selected function
      "$selected_function"
    else
      echo "No function selected. Exiting."
      exit 0
  fi
}
