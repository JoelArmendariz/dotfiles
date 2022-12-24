#!bin/zsh

# Remove the pods dir for ios for a clean yarn install in Neutron
function remove_ios_pods() {
  rm -rf ~/Documents/Development/neutron/ios/Pods
}

# Remove the derived data dir for a clean yarn install in Neutron
function remove_derived_data() {
  rm -rf ~/Library/Developer/Xcode/DerivedData/
}

function reconnect_android() {
  adb reverse tcp:8081 tcp:8081
}

# Increments a number for creating new test accounts
function generate_test_account() {
  python ~/Documents/Development/scripts/generateTestAccount/main.py $1
}

function ignore_neutron_logs() {
  node ~/Documents/Development/scripts/ignoreNeutronLogs/index.js $1
}

function show_neutron_blocking_overlay() {
  node ~/Documents/Development/scripts/showInteractionBlocker/index.js $1
}

function start_flows_watcher() {
  cd ~/Documents/Development/flows-change-watcher/index.ts
  yarn dev
}

