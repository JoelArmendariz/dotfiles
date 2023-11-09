return {
  {
    'Mofiqul/vscode.nvim',
    config = function()
      require('vscode').setup({
        transparent = true,
        italic_comments = true,
      })
      vim.cmd([[colorscheme vscode]])
    end
  },
  {
	  'rose-pine/neovim',
	  name = 'rose-pine',
    -- config = function()
    --   vim.cmd([[colorscheme rose-pine]])
    -- end
  },
}
