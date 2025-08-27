-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
--vim.cmd("hi CursorLine gui=NONE guibg=NONE")
vim.api.nvim_set_hl(0, "CursorLine", { bg = "#000000" })
vim.opt.shiftwidth = 2
vim.opt.background = "dark" -- make sure the theme is in dark mode
vim.opt.cmdheight = 1 
vim.opt.colorcolumn = "80"
vim.opt.showmode = true
-- important
vim.cmd.colorscheme("rose-pine")
-- important
vim.opt.scrolloff = 7
-- Make all keywords bold
vim.cmd("highlight Keyword gui=bold cterm=bold")
-- Make all functions bold
vim.cmd("highlight Function gui=bold cterm=bold")
-- (Optional) Make types, constants, and identifiers bold too
vim.cmd("highlight Type gui=bold cterm=bold")
vim.cmd("highlight Constant gui=bold cterm=bold")
vim.cmd("highlight Identifier gui=bold cterm=bold")
vim.opt.guicursor = "a:block"

-- Auto-remove extra blank lines at EOF, keep max 9

-- Ensure exactly 9 blank lines at EOF
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  callback = function()
    local save_cursor = vim.fn.getpos(".")
    vim.cmd([[
      keepjumps keeppatterns %s/\(\n\)\{1,}\%$//e
      for i in range(9)
        $put =''
      endfor
    ]])
    vim.fn.setpos(".", save_cursor)
  end,
})




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



