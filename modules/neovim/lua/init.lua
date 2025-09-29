-- Нумерация
vim.opt.number = true
vim.opt.relativenumber = true

-- Табуляция
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.smartindent = true

vim.cmd('colorscheme catppuccin')

vim.opt.termguicolors = true

vim.g.mapleader = " "

vim.keymap.set('n', '<leader>w', ':w<CR>')
vim.keymap.set('n', '<leader>q', ':q<CR>')
vim.keymap.set('n', '<leader>wq', ':wq<CR>')

