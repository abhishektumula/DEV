return {
  "ibhagwan/fzf-lua",
  dependencies = { "nvim-tree/nvim-web-devicons" }, -- optional icons
  config = function()
    local fzf = require("fzf-lua")

    fzf.setup({
      winopts = {
        height = 0.85,
        width = 0.80,
        preview = { layout = "vertical" },
      },
    })

    -- Map <leader>m to fzf file finder in normal mode
    vim.keymap.set("n", "<leader>M", fzf.files, { desc = "Find Files (fzf)" })
  end,
}

