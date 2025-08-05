return { {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.5',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<leader>f', builtin.find_files, { desc = "Search files" })
    vim.keymap.set('n', '<leader>st', builtin.live_grep, { desc = "Search text" })
    vim.keymap.set('n', '<leader>sb', builtin.buffers, { desc = "Search buffers" })
    vim.keymap.set('n', '<leader>sh', builtin.help_tags, { desc = "Search help" })
    vim.keymap.set('n', '<leader>sk', builtin.keymaps, { desc = "Search keymaps" })
    vim.keymap.set('n', '<leader>s/', builtin.current_buffer_fuzzy_find, { desc = "Fuzzy search in current buffer" })
    vim.keymap.set('n', '<leader>sd', builtin.treesitter, { desc = "Search functions/vars" })
    vim.keymap.set('n', '<leader>sr', builtin.resume, { desc = "Continue last search" })
  end
},
  {
    "nvim-telescope/telescope-ui-select.nvim",
    config = function()
      require("telescope").setup {
        defaults = { layout_strategy = "vertical" },
        extensions = { ["ui-select"] = { require("telescope.themes").get_dropdown {} } }
      }
      require("telescope").load_extension("ui-select")
    end
  }
}
