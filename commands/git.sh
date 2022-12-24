#!bin/zsh

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
