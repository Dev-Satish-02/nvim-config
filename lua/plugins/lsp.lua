return {
  {
    "williamboman/mason.nvim",
    version = "v1.*",
    config = function()
      require("mason").setup()
    end,
  },

  {
    "williamboman/mason-lspconfig.nvim",
    version = "v1.*",
    dependencies = { "williamboman/mason.nvim" },
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "pyright",   -- Python
          "clangd",    -- C / C++
          "ts_ls",     -- JS / TS (Mason name)
          "html",
          "cssls",
          "jsonls",
        },
      })
    end,
  },

  {
    "neovim/nvim-lspconfig",
    version = "v0.1.*",
    dependencies = { "williamboman/mason-lspconfig.nvim" },
    config = function()
      local lspconfig = require("lspconfig")

      -- IMPORTANT: this connects LSP to nvim-cmp
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      lspconfig.pyright.setup({ capabilities = capabilities })
      lspconfig.clangd.setup({ capabilities = capabilities })
      lspconfig.tsserver.setup({ capabilities = capabilities })
      lspconfig.html.setup({ capabilities = capabilities })
      lspconfig.cssls.setup({ capabilities = capabilities })
      lspconfig.jsonls.setup({ capabilities = capabilities })
    end,
  },
}

