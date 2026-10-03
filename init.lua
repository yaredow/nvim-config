vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.g.have_nerd_font = true

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.loader.enable()
require 'yada.config.lazy'

local ok, colorscheme = pcall(require, 'theme')
vim.cmd.colorscheme(ok and colorscheme or 'tokyonight-night')

vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking text',
  group = vim.api.nvim_create_augroup('yada-highlight-yank', { clear = true }),
  callback = function() vim.hl.on_yank() end,
})

require 'yada.core.options'
require('yada.core').setup()
