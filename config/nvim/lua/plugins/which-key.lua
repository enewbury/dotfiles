return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
  end,
  opts = {
    win = { border = "single" }
  },
  keys = {
    { "<leader>g", group = "Git" },
    { "<leader>l", group = "LSP" },
    { "<leader>s", group = "Searching" },
    { "<leader>t", group = "Tests" },
  }
}
