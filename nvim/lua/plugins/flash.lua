return {
  "folke/flash.nvim",
  opts = { enabled = false },
  keys = {
    -- disable the default flash keymap
    { "s", mode = { "n", "x", "o" }, false },
  },
}
