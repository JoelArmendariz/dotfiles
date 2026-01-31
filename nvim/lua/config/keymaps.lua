-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

vim.keymap.del("n", "<M-j>")
vim.keymap.del("i", "<M-j>")
vim.keymap.del("v", "<M-j>")

map("n", "<leader>l", "$", { desc = "Move to end of line" })
map("n", "<leader>h", "^", { desc = "Move to start of line" })

map({ "n", "v" }, "<leader>y", '"+y', { desc = "Yank to system clipboard" })

map("n", "<leader><leader>h", "<C-w>h", { desc = "Go to Left Window", remap = true })
map("n", "<leader><leader>j", "<C-w>j", { desc = "Go to Lower Window", remap = true })
map("n", "<leader><leader>k", "<C-w>k", { desc = "Go to Upper Window", remap = true })
map("n", "<leader><leader>l", "<C-w>l", { desc = "Go to Right Window", remap = true })

map("n", "<leader>n", vim.cmd.Ex, { noremap = true, silent = true, desc = "Open netrw file tree" })
map("n", "<leader>cp", "<cmd>let @+=@%<CR>", { desc = "Copy path" })

map("n", "<leader>ps", function()
  require("telescope.builtin").grep_string({ search = vim.fn.input("Find All Query > ") })
end, { desc = "Initial grep term and then fuzzy find file" })

map("n", "<leader>rf", "<cmd>!ts-node %<CR>", { desc = "Run ts file" })
map("n", "<leader>rpf", "<cmd>!python3 %<CR>", { desc = "Run py file" })
map("n", "<leader>rrf", "<cmd>!cargo run<CR>", { desc = "Run rs file" })
