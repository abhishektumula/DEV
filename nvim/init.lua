-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
--vim.cmd("hi CursorLine gui=NONE guibg=NONE")
vim.api.nvim_set_hl(0, "CursorLine", { bg = "#000000" })
vim.opt.shiftwidth = 2
vim.opt.background = "dark" -- make sure the theme is in dark mode
vim.opt.cmdheight = 1 
vim.opt.colorcolumn = "80"
vim.cmd.colorscheme("rose-pine")
vim.opt.scrolloff = 7

--vim.opt.guicursor = "a:block"
--Universal transparency overrides
local transparent_groups = {
  "Normal",
  "NormalNC",
  "NormalFloat",
  "FloatBorder",
  "TelescopeNormal",
  "TelescopeBorder",
  "TelescopePromptNormal",
  "TelescopePromptBorder",
  "TelescopeResultsNormal",
  "TelescopeResultsBorder",
  "TelescopePreviewNormal",
  "TelescopePreviewBorder",
  "NvimTreeNormal",
  "NvimTreeNormalNC",
  "NvimTreeEndOfBuffer",
  "NvimTreeWinSeparator",
  "Pmenu",
  "PmenuSel",
  --"StatusLine",
  --"StatusLineNC",
  "WinSeparator",
  "MsgArea",
  "WhichKeyFloat",
  "WhichKeyBorder",
  "NoiceCmdlinePopup",
  "NoiceCmdlinePopupBorder",
  "FloatTitle",
}

for _, group in ipairs(transparent_groups) do
--  vim.api.nvim_set_hl(0, group, { bg = "NONE" })
  vim.api.nvim_set_hl(0, group, { bg = "NONE"  })
end



vim.api.nvim_set_hl(0, "CursorLine", { bg = "NONE", underline = false })
vim.api.nvim_set_hl(0, "CursorLineNr", { bg = "NONE" })



