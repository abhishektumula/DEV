return {
  -- 1. Tokyo Night
  {
    "folke/tokyonight.nvim",
    name = "tokyonight",
    priority = 1000,
    lazy = true,
    opts = {
      style = "night",
      transparent = true,
      styles = { sidebars = "transparent", floats = "transparent" },
      on_highlights = function(hl, _)
        hl.NvimTreeNormal = { bg = "none" }
        hl.NvimTreeNormalNC = { bg = "none" }
        hl.NvimTreeEndOfBuffer = { bg = "none" }
        hl.NvimTreeWinSeparator = { fg = "#3b4261", bg = "none" }
      end,
    },
    config = function(_, opts)
      require("tokyonight").setup(opts)
    end,
  },

  {
    "rose-pine/neovim",
    name = "rose-pine",
    priority = 1000,
    lazy = true,
    opts = {
      disable_italics = true,
      variant = "moon",
      disable_background = true,
      highlight_groups = {
        NvimTreeNormal = { bg = "none" },
        NvimTreeNormalNC = { bg = "none" },
        NvimTreeEndOfBuffer = { bg = "none" },
        NvimTreeWinSeparator = { fg = "subtle", bg = "none" },
      },
    },
    config = function(_, opts)
      require("rose-pine").setup(opts)
    end,
  },

  {
    "olivercederborg/poimandres.nvim",
    name = "poimandres",
    priority = 1000,
    lazy = true,
    config = function()
      vim.cmd("colorscheme poimandres")
    end,
  },
}
