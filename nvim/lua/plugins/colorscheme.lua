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
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
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

  -- 2. One Dark Pro
  {
    "olimorris/onedarkpro.nvim",
    name = "onedarkpro",
    priority = 1000,
    lazy = true,
    opts = {
      colorscheme = "onedark",
      options = {
        transparency = true,
      },
      highlights = {
        NvimTreeNormal = { bg = "none" },
        NvimTreeNormalNC = { bg = "none" },
        NvimTreeEndOfBuffer = { bg = "none" },
        NvimTreeWinSeparator = { fg = "#3b4261", bg = "none" },
      },
    },
    config = function(_, opts)
      require("onedarkpro").setup(opts)
    end,
  },

  -- 3. Night Owl
  {
    "oxfist/night-owl.nvim",
    name = "night-owl",
    priority = 1000,
    lazy = true,
    config = function()
      vim.cmd("colorscheme night-owl")
      vim.api.nvim_set_hl(0, "NvimTreeNormal", { bg = "none" })
      vim.api.nvim_set_hl(0, "NvimTreeNormalNC", { bg = "none" })
      vim.api.nvim_set_hl(0, "NvimTreeEndOfBuffer", { bg = "none" })
      vim.api.nvim_set_hl(0, "NvimTreeWinSeparator", { fg = "#3b4261", bg = "none" })
    end,
  },

  -- 4. Catppuccin
  --{
  --  "catppuccin/nvim",
  --  name = "catppuccin",
  --  priority = 1000,
  --  lazy = true,
  --  opts = {
  --    flavour = "mocha",
  --    transparent_background = true,
  --    integrations = {
  --      cmp = true,
  --      gitsigns = true,
  --      nvimtree = true,
  --      telescope = true,
  --      which_key = true,
  --      treesitter = true,
  --      notify = true,
  --      mini = true,
  --    },
  --    custom_highlights = function(colors)
  --      return {
  --        NvimTreeNormal = { bg = "none" },
  --        NvimTreeNormalNC = { bg = "none" },
  --        NvimTreeEndOfBuffer = { bg = "none" },
  --        NvimTreeWinSeparator = { fg = colors.surface0, bg = "none" },
  --      }
  --    end,
  --  },
  --  config = function(_, opts)
  --    require("catppuccin").setup(opts)
  --  end,
  --},

  -- 5. Rose Pine
  {
    "rose-pine/neovim",
    name = "rose-pine",
    priority = 1000,
    lazy = true,
    opts = {
      variant = "moon",
      disable_background = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
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

  -- 6. Gruvbox
  {
    "ellisonleao/gruvbox.nvim",
    name = "gruvbox",
    priority = 1000,
    lazy = true,
    opts = {
      transparent_mode = true,
      terminal_colors = true,
      overrides = {
        NvimTreeNormal = { bg = "none" },
        NvimTreeNormalNC = { bg = "none" },
        NvimTreeEndOfBuffer = { bg = "none" },
        NvimTreeWinSeparator = { fg = "#3b4261", bg = "none" },
      },
    },
    config = function(_, opts)
      require("gruvbox").setup(opts)
    end,
  },

  -- 7. Everforest
  {
    "sainnhe/everforest",
    name = "everforest",
    priority = 1000,
    lazy = true,
    config = function()
      vim.g.everforest_background = 'hard'
      vim.g.everforest_transparent_background = 1
      vim.cmd("colorscheme everforest")
      vim.api.nvim_set_hl(0, "NvimTreeNormal", { bg = "none" })
      vim.api.nvim_set_hl(0, "NvimTreeNormalNC", { bg = "none" })
      vim.api.nvim_set_hl(0, "NvimTreeEndOfBuffer", { bg = "none" })
      vim.api.nvim_set_hl(0, "NvimTreeWinSeparator", { fg = "#3b4261", bg = "none" })
    end,
  },

  -- 8. Kanagawa
  {
    "rebelot/kanagawa.nvim",
    name = "kanagawa",
    priority = 1000,
    lazy = true,
    opts = {
      compile = false,
      transparent = true,
      theme = "wave", -- wave, dragon, lotus
      overrides = function(colors)
        return {
          NvimTreeNormal = { bg = "none" },
          NvimTreeNormalNC = { bg = "none" },
          NvimTreeEndOfBuffer = { bg = "none" },
          NvimTreeWinSeparator = { fg = colors.sumiInk4, bg = "none" },
        }
      end,
    },
    config = function(_, opts)
      require("kanagawa").setup(opts)
    end,
  },

  -- 9. Nord
  {
    "shaunsingh/nord.nvim",
    name = "nord",
    priority = 1000,
    lazy = true,
    config = function()
      vim.g.nord_disable_background = true
      vim.cmd("colorscheme nord")
      vim.api.nvim_set_hl(0, "NvimTreeNormal", { bg = "none" })
      vim.api.nvim_set_hl(0, "NvimTreeNormalNC", { bg = "none" })
      vim.api.nvim_set_hl(0, "NvimTreeEndOfBuffer", { bg = "none" })
      vim.api.nvim_set_hl(0, "NvimTreeWinSeparator", { fg = "#3b4261", bg = "none" })
    end,
  },

  -- 10. Moonfly
  {
    "bluz71/vim-moonfly-colors",
    name = "moonfly",
    priority = 1000,
    lazy = true,
    config = function()
      vim.g.moonflyTransparent = true
      vim.cmd("colorscheme moonfly")
      vim.api.nvim_set_hl(0, "NvimTreeNormal", { bg = "none" })
      vim.api.nvim_set_hl(0, "NvimTreeNormalNC", { bg = "none" })
      vim.api.nvim_set_hl(0, "NvimTreeEndOfBuffer", { bg = "none" })
      vim.api.nvim_set_hl(0, "NvimTreeWinSeparator", { fg = "#3b4261", bg = "none" })
    end,
  },
}

