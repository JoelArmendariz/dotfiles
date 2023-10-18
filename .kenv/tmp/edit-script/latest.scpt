do shell script "open -na /Applications/Alacritty.app"

  delay 1

  tell application "System Events"
      keystroke "nvim /Users/joelarmendariz/.config/.kenv/scripts/convert-colors.ts" & return
  end tell