#!bin/zsh

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
