return {
  'nvim-telescope/telescope.nvim',
  branch = '0.1.x',
  dependencies = { {'nvim-lua/plenary.nvim'} },
  config = function()
    local builtin = require('telescope.builtin')
    local telescope = require('telescope')

    vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
    vim.keymap.set('n', '<leader>f', builtin.git_files, {})
    vim.keymap.set('n', '<leader>pb', builtin.buffers, {})
    vim.keymap.set('n', '<leader>ps', function()
      builtin.grep_string({ search = vim.fn.input("Find All Query > ") });
    end)

    telescope.setup({
      pickers = {
        current_buffer_fuzzy_find = { sorting_strategy = 'ascending' }
      },
    })
  end
}
