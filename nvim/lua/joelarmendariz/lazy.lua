local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = ' '

local plugins = {
  -- Navigation
  {
	  'nvim-telescope/telescope.nvim',
    branch = '0.1.x',
	  dependencies = { {'nvim-lua/plenary.nvim'} }
  },
  'theprimeagen/harpoon',

  -- Colors and syntax highlighting
  'nvim-treesitter/nvim-treesitter', build = ':TSUpdate',
  {
    "nvim-treesitter/nvim-treesitter-textobjects",
    -- after = "nvim-treesitter",
    dependencies = "nvim-treesitter/nvim-treesitter",
  },
  {
	  'rose-pine/neovim',
	  name = 'rose-pine',
  },
  'Mofiqul/vscode.nvim',

  -- Git integration
  'tpope/vim-fugitive',
  'lewis6991/gitsigns.nvim',

  -- LSP
  {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    dependencies = {
        -- LSP Support
        {'neovim/nvim-lspconfig'},
        {'williamboman/mason.nvim'},
        {'williamboman/mason-lspconfig.nvim'},

        -- Autocompletion
        {'hrsh7th/nvim-cmp'},
        {'hrsh7th/cmp-buffer'},
        {'hrsh7th/cmp-path'},
        {'saadparwaiz1/cmp_luasnip'},
        {'hrsh7th/cmp-nvim-lsp'},
        {'hrsh7th/cmp-nvim-lua'},

        -- Snippets
        {'L3MON4D3/LuaSnip'},
        {'rafamadriz/friendly-snippets'},
      }
  },
  'jose-elias-alvarez/null-ls.nvim',

  -- Misc
  "windwp/nvim-autopairs",
  "windwp/nvim-ts-autotag",
  'numToStr/Comment.nvim',
  {
      "danymat/neogen",
      dependencies = "nvim-treesitter/nvim-treesitter",
  },
}

local opts = {}

require('lazy').setup(plugins, opts)
