vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  -- Navigation
  use {
	  'nvim-telescope/telescope.nvim', branch = '0.1.x',
	  -- 'nvim-telescope/telescope.nvim', tag = '0.1.0',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
  use('theprimeagen/harpoon')

  -- Colors and syntax highlighting
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use({
	  'rose-pine/neovim',
	  as = 'rose-pine',
  })

  -- Git integration
  use('tpope/vim-fugitive')
  use {
      'lewis6991/gitsigns.nvim',
      config = function()
          require('gitsigns').setup({
              current_line_blame = false,
          })
      end
  }

  -- LSP Stuff
  use {
      'VonHeikemen/lsp-zero.nvim',
      requires = {
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
  }
  use 'jose-elias-alvarez/null-ls.nvim'

  -- Misc
  use {
      "windwp/nvim-autopairs",
      config = function() require("nvim-autopairs").setup {} end
  }
  use {
      'numToStr/Comment.nvim',
      config = function()
          require('Comment').setup()
      end
  }

end)
