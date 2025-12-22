
return {
  -- Mason: manage LSPs, DAPs, linters
  {
    "mason-org/mason.nvim",
    build = ":MasonUpdate",
    config = true,
  },

  -- Mason-LSPConfig: bridge mason and nvim-lspconfig
  {
    "mason-org/mason-lspconfig.nvim",
    dependencies = {
      "mason-org/mason.nvim",
      "neovim/nvim-lspconfig",
    },
    config = function()
      require("mason").setup()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "html",
          "cssls",
          "ts_ls",   -- JS/TS/React/Next.js
          "pyright",    -- Python
          "gopls",      -- Go
          "tailwindcss",
          "eslint",     -- Linter for JS/TS
        },
        automatic_installation = true,
      })
    end,
  },

  -- Native LSP config
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")

      -- Default capabilities with nvim-cmp support if you're using it
      local capabilities = vim.lsp.protocol.make_client_capabilities()
      local has_cmp, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
      if has_cmp then
        capabilities = cmp_nvim_lsp.default_capabilities(capabilities)
      end

      -- Setup individual servers
      local servers = {
        pyright = {},
        tsserver = {},   -- JS/TS/React/Next.js
        html = {},
        cssls = {},
        gopls = {},
        eslint = {},     -- Linter
        tailwindcss = {},
      }

      for name, config in pairs(servers) do
        config.capabilities = capabilities
        lspconfig[name].setup(config)
      end
    end,
  },
}









