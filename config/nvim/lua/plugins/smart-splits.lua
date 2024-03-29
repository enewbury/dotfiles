return {
  'mrjones2014/smart-splits.nvim',
  config = function()
    local ss = require('smart-splits')
    vim.keymap.set('n', '<C-h>', ss.move_cursor_left)
    vim.keymap.set('n', '<C-j>', ss.move_cursor_down)
    vim.keymap.set('n', '<C-k>', ss.move_cursor_up)
    vim.keymap.set('n', '<C-l>', ss.move_cursor_right)

    vim.keymap.set('n', '<M-h>', ss.resize_left)
    vim.keymap.set('n', '<M-j>', ss.resize_down)
    vim.keymap.set('n', '<M-k>', ss.resize_up)
    vim.keymap.set('n', '<M-l>', ss.resize_right)

    -- Mac option keyboard maps
    vim.keymap.set('n', '˙', ss.resize_left)
    vim.keymap.set('n', '∆', ss.resize_down)
    vim.keymap.set('n', '˚', ss.resize_up)
    vim.keymap.set('n', '¬', ss.resize_right)
  end
}
