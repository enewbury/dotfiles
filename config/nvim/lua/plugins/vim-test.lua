return {
  'vim-test/vim-test',
  dependencies = { 'preservim/vimux' },
  config = function()
    vim.g['test#strategy'] = 'vimux'
    vim.g['VimuxOrientation'] = 'h'
    vim.g['VimuxHeight'] = '30'

    vim.keymap.set('n', '<leader>tt', ':TestNearest<cr>')
    vim.keymap.set('n', '<leader>tf', ':TestFile<cr>')
    vim.keymap.set('n', '<leader>ts', ':TestSuite<cr>')
    vim.keymap.set('n', '<leader>tv', ':TestVisit<cr>')
  end
}
