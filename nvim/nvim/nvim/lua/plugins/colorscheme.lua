
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
    config = function(_, opts) require("tokyonight").setup(opts) end,
  },

  -- 2. One Dark Pro
  {
    "olimorris/onedarkpro.nvim",
    name = "onedarkpro",
    priority = 1000,
    lazy = true,
    opts = {
      colorscheme = "onedark",
      options = { transparency = true },
      highlights = {
        NvimTreeNormal = { bg = "none" },
        NvimTreeNormalNC = { bg = "none" },
        NvimTreeEndOfBuffer = { bg = "none" },
        NvimTreeWinSeparator = { fg = "#3b4261", bg = "none" },
      },
    },
    config = function(_, opts) require("onedarkpro").setup(opts) end,
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

  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    lazy = false, -- make sure it actually loads
    opts = {
      flavour = "mocha", -- latte, frappe, macchiato, mocha
      transparent_background = true,
      integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        telescope = true,
        which_key = true,
        treesitter = true,
        notify = true,
        mini = true,
      },
      custom_highlights = function(colors)
        return {
          NvimTreeNormal = { bg = "none" },
          NvimTreeNormalNC = { bg = "none" },
          NvimTreeEndOfBuffer = { bg = "none" },
          NvimTreeWinSeparator = { fg = colors.surface0, bg = "none" },
        }
      end,
    },
    config = function(_, opts)
      require("catppuccin").setup(opts)
      vim.cmd.colorscheme("catppuccin") -- ✅ actually apply it
    end,
  },

  -- 5. Rose Pine
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
    config = function(_, opts) require("rose-pine").setup(opts) end,
  },

  -- 6. Gruvbox
  {
    "ellisonleao/gruvbox.nvim",
    name = "gruvbox",
    priority = 1000,
    lazy = true,
    opts = { transparent_mode = true },
    config = function(_, opts) require("gruvbox").setup(opts) end,
  },

  -- 7. Nord
  {
    "shaunsingh/nord.nvim",
    name = "nord",
    priority = 1000,
    lazy = true,
    config = function()
      vim.g.nord_disable_background = true
      vim.cmd("colorscheme nord")
    end,
  },

  -- 8. Moonfly
  {
    "bluz71/vim-moonfly-colors",
    name = "moonfly",
    priority = 1000,
    lazy = true,
    config = function()
      vim.g.moonflyTransparent = true
      vim.cmd("colorscheme moonfly")
    end,
  },

  -- 9. Nightfox
  {
    "EdenEast/nightfox.nvim",
    name = "nightfox",
    priority = 1000,
    lazy = true,
    opts = { options = { transparent = true } },
    config = function(_, opts) require("nightfox").setup(opts) end,
  },

  -- 10. Kanagawa
  {
    "rebelot/kanagawa.nvim",
    name = "kanagawa",
    priority = 1000,
    lazy = true,
    opts = { transparent = true },
    config = function(_, opts) require("kanagawa").setup(opts) end,
  },

  -- 11. Everforest
  {
    "sainnhe/everforest",
    name = "everforest",
    priority = 1000,
    lazy = true,
    config = function()
      vim.g.everforest_transparent_background = 1
      vim.cmd("colorscheme everforest")
    end,
  },

  -- 12. Solarized
  {
    "maxmx03/solarized.nvim",
    name = "solarized",
    priority = 1000,
    lazy = true,
    config = function() vim.cmd("colorscheme solarized") end,
  },

  -- 13. Dracula
  {
    "Mofiqul/dracula.nvim",
    name = "dracula",
    priority = 1000,
    lazy = true,
    opts = { transparent_bg = true },
    config = function(_, opts) require("dracula").setup(opts) end,
  },

  -- 14. Material
  {
    "marko-cerovac/material.nvim",
    name = "material",
    priority = 1000,
    lazy = true,
    config = function()
      vim.g.material_style = "darker"
      vim.cmd("colorscheme material")
    end,
  },

  -- 15. Poimandres
  {
    "olivercederborg/poimandres.nvim",
    name = "poimandres",
    priority = 1000,
    lazy = true,
    config = function() vim.cmd("colorscheme poimandres") end,
  },

  -- 16. Monokai Pro
  {
    "loctvl842/monokai-pro.nvim",
    name = "monokai-pro",
    priority = 1000,
    lazy = true,
    opts = { transparent_background = true },
    config = function(_, opts) require("monokai-pro").setup(opts) end,
  },

  -- 17. Zephyr
  { "glepnir/zephyr-nvim", name = "zephyr", priority = 1000, lazy = true },

  -- 18. PaperColor
  { "NLKNguyen/papercolor-theme", name = "papercolor", priority = 1000, lazy = true },

  -- 19. Edge
  {
    "sainnhe/edge",
    name = "edge",
    priority = 1000,
    lazy = true,
    config = function()
      vim.g.edge_transparent_background = 1
      vim.cmd("colorscheme edge")
    end,
  },

  -- 20. Ayu
  {
    "Shatur/neovim-ayu",
    name = "ayu",
    priority = 1000,
    lazy = true,
    config = function()
      require("ayu").setup({ mirage = true, overrides = { Normal = { bg = "none" } } })
      vim.cmd("colorscheme ayu")
    end,
  },
}

