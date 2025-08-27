
return {
  -- Disable the dashboard
  { "goolord/alpha-nvim", enabled = false },

  -- Disable indent guides
  { "lukas-reineke/indent-blankline.nvim", enabled = false },
  { "echasnovski/mini.indentscope", enabled = false },

  -- Optional: disable LazyVim's Snacks dashboard too
  {
    "folke/snacks.nvim",
    opts = {
      dashboard = { enabled = false },
    },
  },
}









