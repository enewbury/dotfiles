vim.cmd('set expandtab')
vim.cmd('set tabstop=2')
vim.cmd('set softtabstop=2')
vim.cmd('set shiftwidth=2')
vim.cmd('set number')
vim.cmd('set splitbelow')
vim.cmd('set splitright')
vim.cmd('set cursorline')
vim.cmd('set clipboard+=unnamedplus')
vim.cmd('set nowrap')
vim.cmd('set scrolloff=5')

vim.opt.termguicolors = true

vim.g.mapleader = ' '

vim.inspect("insepct")
vim.print("print")

vim.keymap.set('n', '-', ':split<cr>', {})
vim.keymap.set('n', '|', ':vsplit<cr>', {})


vim.keymap.set('n', '<C-s>', ':update<cr>', { desc = "Save file" })
vim.keymap.set('i', '<C-s>', '<esc> :update<cr>', { desc = "Save file" })
vim.keymap.set('n', '<leader>q', ':q<cr>', { desc = "Close window" })
vim.keymap.set('n', '<leader>h', ':noh<cr>', { desc = "Clear highlighting" })
vim.keymap.set('n', '<leader>ss', ':%s//g<left><left>', { desc = "Search and replace in buffer" })
vim.keymap.set('n', '<leader>j', ':m -2<cr>', { desc = "Move line down" })
vim.keymap.set('n', '<leader>k', ':m +1<cr>', { desc = "Move line up" })
vim.keymap.set('n', '<leader>gC', ':CoAuthor<cr>', { desc = "Search and insert a co-author at the cursor" })

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable",
    lazypath })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")

-- Todo
-- - buffer switch and close
