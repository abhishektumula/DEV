require("config.lazy")

-- colorscheme gets applied here
vim.cmd.colorscheme("rose-pine")

-- line numbers and relative line numbers
vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.colorcolumn = "80"

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
  --vim.api.nvim_set_hl(0, group, { bg = "#000000" })
  vim.api.nvim_set_hl(0, group, { bg = "NONE" })
end
