vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.mouse=''
vim.opt.guicursor = ''

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false

vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.ignorecase = true

vim.g.python3_host_prog = '/opt/homebrew/bin/python3'
vim.g.python3_host_extra_paths = { '~/Documents/Development/storyfit-platform/backend/script_manager/' }

vim.g.netrw_banner = 0

vim.opt.termguicolors = true

vim.opt.scrolloff = 8

vim.g.mapleader = " "

vim.cmd('set signcolumn=yes:1')
vim.cmd('set background=dark')
vim.cmd('set shortmess=TI')
vim.cmd('set splitright')
