return {
  -- Mason: manage LSPs, DAPs, linters
  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate",
    config = true,
  },

  -- Mason-LSPConfig: bridge mason and nvim-lspconfig
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = {
      "williamboman/mason.nvim",
      "neovim/nvim-lspconfig",
    },
    config = function()
      require("mason").setup()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "html",
          "cssls",
          "jdtls",
          "emmet_ls",
          "tailwindcss",
          "pyright",     -- Python
          "ts_ls",    -- JavaScript, TypeScript
          "html",        -- HTML
          "cssls",       -- CSS
          "gopls",       -- Go
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
        tsserver = {},
        html = {},
        cssls = {},
        gopls = {},
      }

      for name, config in pairs(servers) do
        config.capabilities = capabilities
        lspconfig[name].setup(config)
      end
    end,
  },
}

