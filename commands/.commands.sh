#!bin/zsh

##### Quick files/Navigation #####

# Remove the pods dir for ios for a clean yarn install in Neutron
function remove_ios_pods() {
  rm -rf ~/Documents/Development/neutron/ios/Pods
}

# Remove the derived data dir for a clean yarn install in Neutron
function remove_derived_data() {
  rm -rf ~/Library/Developer/Xcode/DerivedData/
}

# Open this file
function commands() {
  nvim ~/.config/commands/.commands.sh
}

# Source this .commands.sh file
function source_commands() {
  source ~/.config/commands/.commands.sh
}

function reconnect_android() {
  adb reverse tcp:8081 tcp:8081
}

# Open neutron in nvim
function neutron() {
  nvim ~/Documents/Development/neutron
}

# Open the neutron directory 
function cd_neutron() {
  cd ~/Documents/Development/neutron
}

# Open maestro in nvim
function maestro() {
  nvim ~/Documents/Development/experiments-service
}

# Open the maestro directory
function cd_maestro() {
  cd ~/Documents/Development/experiments-service
}

# Open ion in nvim
function ion() {
  nvim ~/Documents/Development/ion
  
}

# Open the maestro directory
function cd_ion() {
  cd ~/Documents/Development/ion
}

# Open gameology in nvim
function gameology() {
  nvim ~/Documents/Development/PersonalProjects/gameology-in-react
}

# Open the gameology directory
function cd_gameology() {
  cd ~/Documents/Development/PersonalProjects/gameology-in-react
}

# Open the tablegames directory
function cd_tablegames() {
  cd ~/Documents/Development/PersonalProjects/tablegames/
}

# Open the PersonalProjects directory
function cd_personal() {
  cd ~/Documents/Development/PersonalProjects
}

# Open the portfolio directory
function cd_portfolio() {
  cd ~/Documents/Development/PersonalProjects/portfolio
}

# Open ts snippets file in nvim
function snippets() {
  nvim ~/Documents/Development/snippets/index.ts
}

# Open js snippets file in nvim
function snippetsjs() {
  nvim ~/Documents/Development/snippets/index.js
}

# Open py snippets file in nvim
function snippetspy() {
  nvim ~/Documents/Development/snippets/main.py
}

# Open scripts directory in nvim
function scripts() {
  nvim ~/Documents/Development/scripts
}

# Open .zshrc in nvim
function zshrc() {
  nvim ~/.zshrc
}

function source_zshrc() {
  source ~/.zshrc
}

# Open config directory in nvim
function config() {
  nvim ~/.config
}

function alacrittyyml() {
  nvim ~/.config/alacritty/alacritty.yml
}

# Open the config directory
function cd_config() {
  cd ~/.config
}

# Open nvim config directory
function nvim_config() {
  cd ~/.config/nvim
}

# Increments a number for creating new test accounts
function generate_test_account() {
  python ~/Documents/Development/scripts/generateTestAccount/main.py $1
}

##### TMUX #####

# tmux attach
function t() {
  tmux a -t $1
}

# new tmux session
function tnew() {
  tmux new -s $1
}

# view tmux servers
function ts() {
  tmux ls
}

# tmux kill-server
function tkill() {
  tmux kill-server
}

# Open config tmux server or create it
function tc() {
  SERVERS=$(eval 'tmux ls')
  CONFIG='config'
  if [[ "$SERVERS" == *"$CONFIG"* ]]
  then
    tmux a -t config
  else
    tmux new -s config
  fi
}


# Open neutron tmux server or create it
function tn() {
  SERVERS=$(eval 'tmux ls')
  NEUTRON='neutron'
  if [[ "$SERVERS" == *"$NEUTRON"* ]]
  then
    tmux a -t neutron
  else
    tmux new -s neutron
  fi
}

# Open maestro tmux server or create it
function tm() {
  SERVERS=$(eval 'tmux ls')
  MAESTRO='maestro'
  if [[ "$SERVERS" == *"$MAESTRO"* ]]
  then
    tmux a -t maestro
  else
    tmux new -s maestro
  fi
}

# Open ion tmux server or create it
function ti() {
  SERVERS=$(eval 'tmux ls')
  ION='ion'
  if [[ "$SERVERS" == *"$ION"* ]]
  then
    tmux a -t ion
  else
    tmux new -s ion
  fi
}

function tscripts() {
  SERVERS=$(eval 'tmux ls')
  SCRIPTS='scripts'
  if [[ "$SERVERS" == *"$SCRIPTS"* ]]
  then
    tmux a -t scripts
  else
    tmux new -s scripts
  fi
}
# Open gameology tmux server or create it
function tg() {
  SERVERS=$(eval 'tmux ls')
  GAMEOLOGY='gameology'
  if [[ "$SERVERS" == *"$GAMEOLOGY"* ]]
  then
    tmux a -t gameology
  else
    tmux new -s gameology
  fi
}

##### Git shorthand #####

# Git
function gs() {
  git status
}

# Git checkout develop
function gcd() {
  git checkout develop
}

# Pull from develop
function gpd() {
  git pull origin develop
}

# Add all files except the Neutron iterables
function gae() {
  git add --all -- ':!ios/3rd Party/Iterable' ':!ios/Neutron.xcodeproj/project.pbxproj' ':!ios/Podfile.lock' ':!src/base/react-native-note-uploader/ios/RNNoteUploader.xcodeproj/project.pbxproj' && git status
}

# Open lazygit
function lg() {
  lazygit
}

##### QMK #####

# Compile Dactyl
function compile_dactyl() {
  qmk compile -kb handwired/dactyl_manuform/4x6 -km default
}

function flash_ploopy() {
 make ploopyco/trackball/rev1_005:robertcurry0216:flash 
}

function flash_ploopy_mini() {
  make ploopyco/trackball_mini/rev1_002:default:flash
}

##### MISC #####

# Go to website in Chrome
function goto() {
  open -a "Google Chrome" http://$1.com
}

# Copy current directory to clipboard
function cp() {
  pwd | pbcopy
}

# Run the Wordle bot and open the screenshot
function wordle() {
  cd ~/Documents/Development/PersonalProjects/Wordle_Bot
  ts-node index.ts $1
  open screenshots/board.png
}

function ignore_neutron_logs() {
  node ~/Documents/Development/scripts/ignoreNeutronLogs/index.js $1
}

function show_neutron_blocking_overlay() {
  node ~/Documents/Development/scripts/showInteractionBlocker/index.js $1
}

function copy_branch() {
  node ~/Documents/Development/scripts/copyGitBranch/index.js
}

function check_for_logs() {
  git diff | grep 'console.log'
}

function pi() {
  ssh pi@192.168.1.227
}

function start_flows_watcher() {
  cd ~/Documents/Development/flows-change-watcher/index.ts
  yarn dev
}

function cd_advent_of_code() {
  cd ~/Documents/Development/PersonalProjects/advent-of-code
}

