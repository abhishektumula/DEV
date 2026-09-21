return {
  {
    "mason.nvim",
    opts = {
      ensure_installed = {
        "typescript-language-server",
        "html-lsp",
        "css-lsp",
        "tailwindcss-language-server",
        "eslint-lsp",
      },
    },
  },

  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ts_ls = {},
        html = {},
        cssls = {},
        tailwindcss = {},
        eslint = {},
      },
    },
  },
}
