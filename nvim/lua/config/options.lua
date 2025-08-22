-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.opt.list = false
vim.cmd([[autocmd VimEnter * if argc() == 0 | enew | endif]])
vim.opt.linespace = -1
vim.opt.scrolloff = 7
vim.g.indent_blankline_enabled = false

--vim.opt.guicursor = "a:block"

--vim.g.neovide_padding_top = 0
--vim.g.neovide_padding_bottom = 0
--vim.g.neovide_padding_left = 0
--vim.g.neovide_padding_right = 0



