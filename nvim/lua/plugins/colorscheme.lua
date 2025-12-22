
return {
  -- 1. Tokyo Night
  {
    "folke/tokyonight.nvim",
    name = "tokyonight",
    priority = 1000,
    lazy = true,
    transparent = true, 
    config = function()
      require("tokyonight").setup({})
    end,
  },

  -- 2. Rose Pine
  {
    "rose-pine/neovim",
    name = "rose-pine",
    priority = 1000,
    lazy = true,
    config = function()
      require("rose-pine").setup({})
    end,
  },

  -- 3. Catppuccin
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    lazy = true,
    config = function()
      require("catppuccin").setup({})
    end,
  },
}

