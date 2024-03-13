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
      window = { border = "single", winblend = 60 }
    })
    wk.register({
      s = { name = "Searching" },
      l = { name = "LSP" }
    }, { prefix = "<leader>" })
  end
}
