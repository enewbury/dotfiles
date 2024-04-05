return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
  end,
  config = function()
    local wk = require("which-key")
    wk.setup({
      window = { border = "single" }
    })
    wk.register({
      s = { name = "Searching" },
      t = { name = "Tests" },
      l = { name = "LSP" },
      g = { name = "Git" }
    }, { prefix = "<leader>" })
  end
}
