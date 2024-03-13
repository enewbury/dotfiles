return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require('nvim-treesitter.configs').setup {
      ensure_installed = { "lua", "javascript", "typescript", "python" },
      auto_install = true,
      highlight = { enable = true },
      indent = { enable = true }
    }

    vim.cmd("set foldmethod=expr")
    vim.cmd("set foldexpr=nvim_treesitter#foldexpr()")
    vim.cmd("set nofoldenable")
  end
}
