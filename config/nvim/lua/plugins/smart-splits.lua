return {
  'mrjones2014/smart-splits.nvim',
  config = function()
    local ss = require('smart-splits')
    vim.keymap.set('n', '<C-M-h>', ss.resize_left)
    vim.keymap.set('n', '<C-M-j>', ss.resize_down)
    vim.keymap.set('n', '<C-M-k>', ss.resize_up)
    vim.keymap.set('n', '<C-M-l>', ss.resize_right)
  end
}
