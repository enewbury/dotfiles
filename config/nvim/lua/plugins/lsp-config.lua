return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "elixirls" }
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")

      lspconfig.lua_ls.setup({
        settings = { Lua = { diagnostics = { globals = { 'vim' } } } }
      })

      lspconfig.elixirls.setup({
        cmd = { "elixir-ls" }
      })

      vim.keymap.set('n', '<leader>ld', vim.diagnostic.open_float, {desc = "Open diagnostic under cursor"})
      vim.keymap.set('n', '<leader>lk', vim.diagnostic.goto_prev, {desc = "Show previous diagnostic"})
      vim.keymap.set('n', '<leader>lj', vim.diagnostic.goto_next, {desc = "Show next diagnostic"})


      -- Use LspAttach autocommand to only map the following keys
      -- after the language server attaches to the current buffer
      vim.api.nvim_create_autocmd('LspAttach', {
        group = vim.api.nvim_create_augroup('UserLspConfig', {}),
        callback = function(ev)
          -- Buffer local mappings.
          -- See `:help vim.lsp.*` for documentation on any of the below functions
          local function opts(desc)
            return desc and { buffer = ev.buf, desc = desc } or { buffer = ev.buf}
          end

          vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts("Show documentation"))
          vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts())
          vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts())
          vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts())
          vim.keymap.set('n', '<leader>lD', vim.lsp.buf.type_definition, opts())
          vim.keymap.set('n', '<leader>lr', vim.lsp.buf.rename, opts("Rename item"))
          vim.keymap.set({ 'n', 'v' }, '<leader>la', vim.lsp.buf.code_action, opts("Apply code action"))
          vim.keymap.set('n', '<space>lf', function()
            vim.lsp.buf.format { async = true }
          end, opts("Format buffer"))
        end,
      })
    end
  }
}
