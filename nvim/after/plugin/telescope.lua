local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<C-f>', builtin.current_buffer_fuzzy_find, {})
vim.keymap.set('n', '<leader>pb', builtin.buffers, {})
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Find All Query > ") });
end)

function ApplyTelescopeOptions()
    local TelescopePrompt = {
        -- TelescopePromptNormal = {
        --     bg = 'none',
        -- },
        -- TelescopePromptBorder = {
        --     bg = '#2d3149',
        -- },
        -- TelescopeBorder = {
        --     fg = 'white'
        -- },
        -- TelescopePromptTitle = {
        --     fg = '#2d3149',
        --     bg = '#2d3149',
        -- },
        -- TelescopePreviewTitle = {
        --     fg = '#1F2335',
        --     bg = '#1F2335',
        -- },
        -- TelescopeResultsTitle = {
        --     fg = '#1F2335',
        --     bg = '#1F2335',
        -- },
    }
    for hl, col in pairs(TelescopePrompt) do
        vim.api.nvim_set_hl(0, hl, col)
    end
end

ApplyTelescopeOptions()
