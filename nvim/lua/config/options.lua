-- disable netrw at the very start of your init.lua (nvim-tree)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.g.mapleader = " "


-- Put backup files somewhere besides the working dir
-- vim.opt.undodir = '~/.config/nvim/.nvim-backup/.undo//'
-- vim.opt.backupdir = '~/.config/nvim/.nvim-backup/.backup//'
-- vim.opt.directory = '~/.config/nvim/.nvim-backup/.swp// '

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.termguicolors = true

vim.g.sonokai_style = 'atlantis'
vim.g.sonokai_disable_italic_comment = 1
vim.cmd 'colorscheme sonokai'

vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.colorcolumn = '80'

-- vim.g.python3_host_prog = '/opt/homebrew/bin/python3'

vim.opt.guifont = "Hack Nerd Font Mono:h14"
