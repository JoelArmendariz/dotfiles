vim.g.mapleader = " "
-- Open netrw file tree
vim.keymap.set("n", "<leader>n", vim.cmd.Ex)

-- Move highlighted lines up or down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Pull line below up to the end of the current line preserving cursor position
vim.keymap.set("n", "J", "mzJ`z")

-- Keep cursor in the middle of the screen when jumping vertically
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
-- Keep cursor in the middle of the screen when / searching
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Paste and preserve
vim.keymap.set("x", "<leader>p", "\"_dP")

-- Copy to system clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>y", "\"+Y")
vim.keymap.set("v", "<leader>y", "\"+y")

vim.keymap.set("n", "Q", "<nop>")

-- Git status window
vim.keymap.set("n", "<leader>gs", vim.cmd.Git);

-- File runners
vim.keymap.set("n", "<leader>rf", "<cmd>!ts-node %<CR>")
vim.keymap.set("n", "<leader>rpf", "<cmd>!python3 %<CR>")

-- Window navigation
vim.keymap.set("n", "<leader><leader>h", "<C-w>h")
vim.keymap.set("n", "<leader><leader>j", "<C-w>j")
vim.keymap.set("n", "<leader><leader>k", "<C-w>k")
vim.keymap.set("n", "<leader><leader>l", "<C-w>l")
vim.keymap.set("n", "<leader>h", "^")
vim.keymap.set("n", "<leader>j", "G")
vim.keymap.set("n", "<leader>k", "gg")
vim.keymap.set("n", "<leader>l", "$")

-- Misc
vim.keymap.set('n', '<leader>cp', '<cmd>let @+=@%<CR>')

-- Not sure about these:
-- vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
-- vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
-- vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
-- vim.keymap.set("n", "<leader>k", "<cmd>lprev<CR>zz")

