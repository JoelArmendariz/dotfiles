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
    vim.keymap.set('n', '<leader>gr', function()
      builtin.lsp_references {
        layout_strategy = "horizontal",
        layout_config = {
          width = 0.75,
          height = 0.8,
          prompt_position = "top",
        },
        sorting_strategy = "ascending",
        ignore_filename = false,
        path_display = {"tail"}
      } end,
      {})

    telescope.setup({
      pickers = {
        current_buffer_fuzzy_find = { sorting_strategy = 'descending' }
      },
    })
  end
}
