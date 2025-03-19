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
        ensure_installed = {
          "lua_ls",
          "gopls",
          "rust_analyzer",
          "ts_ls",
          "biome"
        }
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")

      local cap = require("cmp_nvim_lsp").default_capabilities()

      -- Lua
      lspconfig.lua_ls.setup({
        capabilities = cap,
      })

      -- Go
      lspconfig.gopls.setup({
        capabilities = cap,
        settings = {
          gopls = {
            analyses = {
              unusedparams = true,
            },
            staticcheck = true,
          },
        },
      })

      -- TypeScript & JavaScript 
      lspconfig.ts_ls.setup({
        capabilities = cap,
      })

      lspconfig.biome.setup({
        capabilities = cap,
      })

      -- Rust
      lspconfig.rust_analyzer.setup({
        capabilities = cap,
        settings = {
          ["rust-analyzer"] = {
            cargo = { allFeatures = true },
            checkOnSave = { command = "clippy" },
          },
        },
      })

      -- Keybindings for LSP
      vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Show hover documentation" })
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
      vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { desc = "Go to implementation" })
      vim.keymap.set("n", "gr", vim.lsp.buf.references, { desc = "Find references" })
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code actions" })
      vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename symbol" })
    end
  }
}

