-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.opt.list = false
vim.cmd([[autocmd VimEnter * if argc() == 0 | enew | endif]])
vim.opt.cmdheight = 1
vim.opt.linespace = -1
